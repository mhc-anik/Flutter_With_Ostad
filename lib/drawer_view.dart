import 'package:appanik/Assainment_module_10/assainment_mod_10.dart';
import 'package:appanik/aleart_dialog.dart';
import 'package:appanik/basic_app.dart';
import 'package:flutter/material.dart';

class drawer_view extends StatelessWidget {
  const drawer_view({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: const Text('Drawer'),
          bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.phone),
                  text: "Phone",
                ),
                Tab(
                  icon: Icon(Icons.message),
                  text: "Message",
                ),
              ] ),
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
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text("Message"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Call"),
                onTap: () {},
              ),


            ],

          ),
        ),
        body: TabBarView(children: [
          Container(
            alignment: Alignment.center,
            color: Colors.red,
            child: Text("Home"),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.green,
            child: Text("Phone"),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child: Text("Message"),
          ),


        ]),
      ),
    );
  }
}
