import 'package:flutter/material.dart';

class listV extends StatefulWidget {
  const listV({super.key});

  @override
  State<listV> createState() => _listVState();
}

class _listVState extends State<listV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List View",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete, color: Colors.red),
              title: Text('Anik',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
              subtitle: Text('01816253030'),
            ),
          );
        },
      ),
    );
  }
}
