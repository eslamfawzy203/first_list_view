import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    List<String> personList = [
      'Person 1',
    ];
    List<String> itemList = [
      'Item 1',
    ];
    for (int i = 2; i <= 20; i++) {
      for (int u = 2; u <= 20; u++) {
        itemList.add("Item $u");
      }
      personList.add("Person $i");
    }
    return Scaffold(
        body: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: personList.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.blue[600],
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
            title: Text(personList[index]),
            subtitle: Text(itemList[index]),
            trailing: const Icon(Icons.drag_indicator_outlined),
            textColor: Colors.white,
          ),
        );
      },
    ));

    // Tried ListView.separated

    // ListView.separated(
    // itemBuilder: (context, index) {
    //   return Text(personList[index]);
    // },
    // separatorBuilder: (context, index) {
    //   return Text(itemList[index]);
    // },
    // itemCount: personList.length

    //ListView.builder(
    //     itemCount: list.length,
    //     itemBuilder: (context, index) {
    //       return Text(list[index] as String);
    //     }));
  }
}
