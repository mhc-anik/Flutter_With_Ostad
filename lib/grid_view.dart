import 'package:flutter/material.dart';

class gridV extends StatelessWidget {
  const gridV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anik's APP"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(10, (index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: Colors.grey,
            child: Column(
              children: [
                SizedBox(height: 30),
                Icon(Icons.phone_android, size: 100, color: Colors.white),
                SizedBox(height: 10),
                Text(
                  index.toString(),
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
