import 'package:appanik/calculatorApp/calculator/calculator_button.dart';
import 'package:flutter/material.dart';


class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String _output = "0";
  String _input = "0";
  String _operator = "";
  double num1 = 0;
  double num2 = 0;

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        _input = "0";
        _output = "0";
        num1 = 0;
        num2 = 0;
        _operator = "";
      } else if (buttonText == "+" || buttonText == "-" || buttonText == "*" || buttonText == "/") {
        num1 = double.parse(_input);
        _operator = buttonText;
        _input = "0";
      } else if (buttonText == "=") {
        num2 = double.parse(_input);
        double result = 0;

        switch (_operator) {
          case "+":
            result = num1 + num2;
            break;
          case "-":
            result = num1 - num2;
            break;
          case "*":
            result = num1 * num2;
            break;
          case "/":
            result = num2 != 0 ? num1 / num2 : double.nan;
            break;
        }

        _output = result.toString();
        _input = _output;
        _operator = "";
      } else {
        if (_input == "0") {
          _input = buttonText;
        } else {
          _input += buttonText;
        }
        _output = _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator App"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  _output,
                  style: const TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  CalculatorButton(text: "7", onClick: () => _buttonPressed("7")),
                  CalculatorButton(text: "8", onClick: () => _buttonPressed("8")),
                  CalculatorButton(text: "9", onClick: () => _buttonPressed("9")),
                  CalculatorButton(text: "*", onClick: () => _buttonPressed("*"), color: Colors.orange),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(text: "4", onClick: () => _buttonPressed("4")),
                  CalculatorButton(text: "5", onClick: () => _buttonPressed("5")),
                  CalculatorButton(text: "6", onClick: () => _buttonPressed("6")),
                  CalculatorButton(text: "/", onClick: () => _buttonPressed("/"), color: Colors.orange),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(text: "1", onClick: () => _buttonPressed("1")),
                  CalculatorButton(text: "2", onClick: () => _buttonPressed("2")),
                  CalculatorButton(text: "3", onClick: () => _buttonPressed("3")),
                  CalculatorButton(text: "+", onClick: () => _buttonPressed("+"), color: Colors.orange),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(text: "C", onClick: () => _buttonPressed("C")),
                  CalculatorButton(text: "0", onClick: () => _buttonPressed("0")),
                  CalculatorButton(text: "=", onClick: () => _buttonPressed("="), color: Colors.orange),
                  CalculatorButton(text: "-", onClick: () => _buttonPressed("-"), color: Colors.orange),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}