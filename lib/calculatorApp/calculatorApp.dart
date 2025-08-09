import 'package:appanik/calculatorApp/calculatorButton.dart';
import 'package:flutter/material.dart';

class calculatorApp extends StatefulWidget {
  const calculatorApp({super.key});

  @override
  State<calculatorApp> createState() => _calculatorAppState();
}

class _calculatorAppState extends State<calculatorApp> {
  String _output = "0";
  String _input = "0";
  String _ope = "0";
  double num1 = 0;
  double num2 = 0;

  void _buttonPressed(String value){
    print("initially value : $value");

    setState(() {
      if(value == "C"){
        _output = "0";
        _input = "0";
        _ope = "";
        num1 = 0;
        num2 = 0;
      }else if(value == "="){
        num2 = double.parse(_input);
        if(_ope == "+"){
          _output = (num1 + num2).toString();
        }else if(_ope == "-"){
          _output = (num1 - num2).toString();
        }else if(_ope == "*"){
          _output = (num1 * num2).toString();
        }else if(_ope == "/"){
          _output =num2 != 0 ? (num1 / num2).toString() : "Error";
        }
      }else if(["+","-","*","/"].contains(value)){
        num1 = double.parse(_input);
        _ope = value;
        _input = "";
      }else{
        if(_input == "0"){
          _input = value;
        }else{
          _input += value;
        }
        _output = _input;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anik's Calculator App"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Expanded(

        child: Column(
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
                  child: Text(_output,style: TextStyle(fontSize: 70,fontWeight: FontWeight.bold),),
                ),
              ),
            ),
            Row(
              children: [
                calculatorButton(text: "7", onClick: ()=> _buttonPressed("7")),
                calculatorButton(text: "8", onClick: ()=> _buttonPressed("8")),
                calculatorButton(text: "9", onClick: ()=> _buttonPressed("9")),
                calculatorButton(text: "*", onClick: ()=> _buttonPressed("*"),color: Colors.orange,),
              ],
            ),
            Row(
              children: [
                calculatorButton(text: "4", onClick: ()=> _buttonPressed("4")),
                calculatorButton(text: "5", onClick: ()=> _buttonPressed("5")),
                calculatorButton(text: "6", onClick: ()=> _buttonPressed("6")),
                calculatorButton(text: "/", onClick: ()=> _buttonPressed("/"),color: Colors.orange,),
              ],
            ),
            Row(
              children: [
                calculatorButton(text: "1", onClick: ()=> _buttonPressed("1")),
                calculatorButton(text: "2", onClick: ()=> _buttonPressed("2")),
                calculatorButton(text: "3", onClick: ()=> _buttonPressed("3")),
                calculatorButton(text: "+", onClick: ()=> _buttonPressed("+"),color: Colors.orange,),
              ],
            ),
            Row(
              children: [
                calculatorButton(text: "C", onClick: ()=> _buttonPressed("C")),
                calculatorButton(text: "0", onClick: ()=> _buttonPressed("0")),
                calculatorButton(text: "=", onClick: ()=> _buttonPressed("="),color: Colors.orange,),
                calculatorButton(text: "-", onClick: ()=> _buttonPressed("-"),color: Colors.orange,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
