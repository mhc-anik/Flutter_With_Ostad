
import 'package:appanik/Assainment_module_10/assainment_mod_10.dart';
import 'package:appanik/Live_Test_Module_10/Live_Test_Module_10.dart';
import 'package:appanik/aleart_dialog.dart';
import 'package:appanik/basic_app.dart';
import 'package:appanik/drawer_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: basic_app(),
      //home: Aleart_dailog(),
      //home: drawer_view(),
      //home: assainment_mod_10(),
      home: Live_Test_Module_10(),
    );
  }
}
