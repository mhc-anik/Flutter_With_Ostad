import 'package:flutter/material.dart';

class Aleart_dailog extends StatelessWidget {
  const Aleart_dailog({super.key});

  @override
  Widget build(BuildContext context) {
    void showAleartDialog() {
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              title: Text("This is Title"),
              content: Text("This is Content"),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Yes"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("No"),
                ),
              ],
            ),
      );
    }

    void showAleartDialogIcone() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder:
            (context) => AlertDialog(
              title: Text("This is Title"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.message, size: 100, color: Colors.red),
                  Text(
                    "Ah, the classic placeholder of creativity 🧠—“Lorem ipsum dolor sit amet…” It’s like the wardrobe dummy of writing: silent, shapeless, yet strangely elegant.",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,),
                  ),
                ],
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Yes"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("No"),
                ),
              ],
            ),
      );
    }

    void showAleartSubmit(){
      showDialog(context: context, builder: (builder) => SimpleDialog(
        title: Text("This is Title"),
        children: [
          SimpleDialogOption(
            child: Text("Option 1"),
          ),
          SimpleDialogOption(
            child: Text("Option 2"),
          ),
          SimpleDialogOption(
            child: TextField(),
          ),
        ]
      ));
    }

    void showAleartBottom(){
      showModalBottomSheet(context: context, builder: (context) => Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Chose Option",style: TextStyle(fontSize: 30,color: Colors.red),),
          ListTile(
              title: Text("Option 1"),
            ),
            ListTile(
              title: Text("Option 2"),
              onTap: (){},
              onLongPress: (){},
            ),
            ListTile(
              title: Text("Option 3"),
            ),
            ListTile(
              title: Text("Option 3"),
            ),
          ],
        ),

      ));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Anik's App"),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.greenAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showAleartDialog();
              },
              child: Text("Submit"),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                showAleartDialogIcone();
              },
              child: Text("Submit 2"),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                showAleartSubmit();
              },
              child: Container(
                width: 100,
                child: Row(
                  children: [
                    Icon(Icons.message),
                    SizedBox(width: 10),
                    Text("Submit 3"),
                  ],
                ),
              )
            ),

            SizedBox(height: 20,),

            ElevatedButton(
              onPressed: () {
                showAleartBottom();
              },
              child: Container(
                width: 120,
                child: Row(
                  children: [
                    Icon(Icons.account_balance,color: Colors.blue,size: 20,),
                    SizedBox(width: 10),
                    Text("Bottom Sheet"),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
