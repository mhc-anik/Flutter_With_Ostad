
import 'package:flutter/material.dart';

class calculatorButton extends StatelessWidget {
  String text;
  Color ? color;
  final VoidCallback onClick;


  calculatorButton({
    super.key,
    required this.text,
    required this.onClick,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15.0),
              backgroundColor:color ?? Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: onClick, child: Text(text,style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),)),
      ),
    );
  }
}