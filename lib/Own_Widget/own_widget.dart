import 'package:appanik/Own_Widget/CityCard.dart';
import 'package:flutter/material.dart';

class own_widget extends StatelessWidget {
  const own_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CityCard(img: "https://www.freepik.com/free-ai-image/vibrant-autumn-maple-leaves-nature-beauty-showcased-generated-by-ai_41205934.htm#fromView=keyword&page=1&position=2&uuid=a4333bfa-ad2a-4679-b658-22998fccd67e&query=Wallpaper", text: "Stone", rating: "🪷4.5"),
                CityCard(img: "https://images.pexels.com/photos/8633/nature-tree-green-pine.jpg?cs=srgb&dl=android-wallpaper-drops-of-water-hd-wallpaper-8633.jpg&fm=jpg", text: "Grass", rating: "🪷4.5"),
                CityCard(img: "https://www.freepik.com/free-ai-image/view-spectacular-nature-landscape_65155656.htm#fromView=keyword&page=1&position=0&uuid=7c9fc485-22ca-47e7-8462-e464a0e33163&query=Forest+Trees", text: "Stone", rating: "🪷4.5"),
              ],
            ),
          )


        ],
      ),
    );
  }
}


