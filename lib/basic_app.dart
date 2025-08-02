import 'package:flutter/material.dart';

class basic_app extends StatelessWidget {
  const basic_app({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Anik's App"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          children: [
            Container(
              color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.phone_android, size: 100, color: Colors.white),
                  Icon(Icons.message, size: 100, color: Colors.white),
                  Icon(Icons.phone, size: 100, color: Colors.white),
                  Text("This is ANik"),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  color: Colors.red,
                  height: 100,
                  child: Text("This is ANik"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
