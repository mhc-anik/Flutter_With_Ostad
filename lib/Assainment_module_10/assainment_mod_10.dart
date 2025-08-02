import 'package:flutter/material.dart';

class assainment_mod_10 extends StatelessWidget {
  const assainment_mod_10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Assignment Module 10",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white24,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Hello, World",
              style: TextStyle(
                fontSize: 22,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text("Welcome to Flutter!"),
            Image.asset("asset/flutter.png", scale: 2),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Button Pressed!"),
                backgroundColor: Colors.green,
                  behavior: SnackBarBehavior.floating,
                ));
              },
              child: Text("Press Me"),
            ),
          ],
        ),
      ),
    );
  }
}
