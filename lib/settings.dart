import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding:const EdgeInsets.all(8),
    itemCount: 4,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        color: Color.fromARGB(255, 215, 221, 225),
        child: ListTile(title: Text('List ${index +1}'),
        subtitle: Text('Subtitle of List ${index +1}'),
      ),
      );
     },);
  }
}
