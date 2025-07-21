import 'package:flutter/material.dart';

class stackV extends StatefulWidget {
  const stackV({super.key});

  @override
  State<stackV> createState() => _stackVState();
}

class _stackVState extends State<stackV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Anik's App",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("this is Anik",style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}
