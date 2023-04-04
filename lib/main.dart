import 'package:flutter/material.dart';
// import 'package:list_view_widget/container.dart';

import 'my_List_View.dart';

void main() {
  runApp(const MyApp());
 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home:
            // MyListView(),
            Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(color: Colors.black, Icons.arrow_back),
                      Text("ListView Widget",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      //Icon(Icons.arrow_back_ios_rounded)),
                      //  Icon(color: Colors.black,Icons.arrow_forward_ios_rounded)
                      Icon(color: Colors.black, Icons.data_object)
                    ],
                  ),
                ),
                body: MyListView() // MyContainer()
                )); // ));
  }
}


// List<Map<String, String>> list = [
//   {"Person1": "Item 1"},
//   {"Person2": "Item 2"},
//   {"Person3": "Item 3"},
// ];

