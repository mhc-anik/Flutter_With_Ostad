import 'package:appanik/grid_view.dart';
import 'package:appanik/list_view.dart';
import 'package:appanik/stack_view.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "Anik's App",
      //  home: listV(),
      //  home: login_page(),
      //  home: gridV(),
          home: stackV(),


    );
  }
}
