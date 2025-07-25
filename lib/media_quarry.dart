import 'package:flutter/material.dart';

class media_quarry extends StatefulWidget {
  const media_quarry({super.key});

  @override
  State<media_quarry> createState() => _media_quarryState();
}

class _media_quarryState extends State<media_quarry> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:
      currentWidth > 600 ? Colors.pink : Colors.blue,
      body: Center(
        child: Text(currentWidth.toString()),
      ),
    );
  }
}
