
import 'package:appanik/Chat_page/chat_page.dart';
import 'package:appanik/aleart_message.dart';
import 'package:appanik/grid_view.dart';
import 'package:appanik/list_view.dart';
import 'package:appanik/media_quarry.dart';
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
      //  home: stackV(),
      //  home: AleartM(),
      //  home :chat_page(),
          home: media_quarry(),

    );
  }
}
