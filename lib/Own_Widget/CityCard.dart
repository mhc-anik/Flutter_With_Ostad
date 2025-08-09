
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String img, text, rating;

  const CityCard({
    super.key, required this.img, required this.text, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Main Container
        Container(
          width: 300,
          height: 200,
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(img),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // In the Container all Text and Button
        Positioned(
          bottom: 20,
          right: 20,
          left: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              // Text Writing Start ---->
              Text(
                text,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow,
                ),
              ),

              // Text Writing End <-------

              // Button Making Start ------>
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  rating,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Button Making End <--------

            ],
          ),
        ),
      ],
    );
  }
}