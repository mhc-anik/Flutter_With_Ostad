import 'package:flutter/material.dart';

class stackV extends StatelessWidget {
  const stackV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: Text(
          "Anik's App",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                color: Colors.red,
                height: 200,
                width: 200,
              ),
              Positioned(
                bottom: 50,
                left: 10,
                right: 10,
                child: Container(
                  color: Colors.blue,
                  height: 200,
                  width: 200,
                ),
              ),
              Positioned(
                bottom: 80,
                left: 30,
                right: 30,
                child: Container(
                  color: Colors.purpleAccent,
                  height: 200,
                  width: 200,
                ),
              ),


            ],
          ),
          Stack(
            children: [
              CircleAvatar(
                radius: 90,
                child: Image.asset("asset/LKL Logo.gif",),
              ),
              Positioned(
                bottom: 30,
                right: 0,

                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white,width: 3),
                  ),

                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
