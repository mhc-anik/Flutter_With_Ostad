import 'package:appanik/Chat_page/util/emotion_face.dart';
import 'package:flutter/material.dart';

class chat_page extends StatefulWidget {
  const chat_page({super.key});

  @override
  State<chat_page> createState() => _chat_pageState();
}

class _chat_pageState extends State<chat_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],

      // Bottom Navigation Bar

      bottomNavigationBar: BottomNavigationBar(
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          ],
      ),

      body: SafeArea(
        child: Column(
          children: [
            // Gretting ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Hi Anik !
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Anik !",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "25 July 2025",
                      style: TextStyle(
                        color: Colors.blue[200],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // Notification
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Icon(Icons.notifications, color: Colors.white),
                ),
              ],
            ),

            SizedBox(height: 25),

            // Search Bar
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.white),
                  SizedBox(width: 5),
                  Text("Search", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),

            SizedBox(height: 25),

            // How do you feel ?
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "How do you feel ?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.more_horiz, color: Colors.white),
              ],
            ),
            SizedBox(height: 25),

            // 4 Diffent Faces
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //bad
                    Column(
                      children: [
                        EmotionFace(emoticonFace: "😲"),
                        SizedBox(height: 8),
                        Text("Bad", style: TextStyle(color: Colors.white)),
                      ],
                    ),

                    //fine
                    Column(
                      children: [
                        EmotionFace(emoticonFace: "🙂"),
                        SizedBox(height: 8),
                        Text("Fine", style: TextStyle(color: Colors.white)),
                      ],
                    ),

                    //well
                    Column(
                      children: [
                        EmotionFace(emoticonFace: "❤️‍🩹"),
                        SizedBox(height: 8),
                        Text("WELL", style: TextStyle(color: Colors.white)),
                      ],
                    ),

                    //Excellent
                    Column(
                      children: [
                        EmotionFace(emoticonFace: "💯"),
                        SizedBox(height: 8),
                        Text("Excellent", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ],
            ),


            //Lower Container Body
            SizedBox(
              height: 25,
            ),

            Expanded(child: Container(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
