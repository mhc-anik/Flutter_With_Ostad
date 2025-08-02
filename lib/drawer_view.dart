import 'package:flutter/material.dart';

class drawer_view extends StatelessWidget {
  const drawer_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("asset/flutter.png"),
                ),
                Text("Anik Chowdhury",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text("mhc.anik@outlook.com"),
              ]
            )),

            // Drawer Body


          ],

        ),
      ),
      body : Container(
        height: double.infinity,
        color: Colors.blueAccent,
        child: Column(
          children: [
            Image.asset("asset/flutter.png"),
          ],
        ),
      )

    );
  }
}
