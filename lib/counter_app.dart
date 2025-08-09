import 'package:flutter/material.dart';

class counter_app extends StatefulWidget {
  const counter_app({super.key});
  @override
  State<counter_app> createState() => _counter_appState();
}

class _counter_appState extends State<counter_app> {
  int number = 0;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text("Counter APP"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(number.toString(), style: TextStyle(fontSize: 50)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number--;
                      print(number);
                    });
                  },
                  child: Text("--", style: TextStyle(fontSize: 50)),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number++;
                      print(number);
                    });
                  },
                  child: Text("++", style: TextStyle(fontSize: 50)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
