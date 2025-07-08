import 'package:flutter/material.dart';
import 'package:sorealtravel_app/screens/favourites_page.dart';
import 'package:sorealtravel_app/widgets/widget_wheel.dart';

import '../main.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  }); // This is the constructor for the HomePage widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [Text("Hello Pieter"), Icon(Icons.home)]),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            categorySection(),
            WidgetWheel(), // This is the widget wheel section

            // This is the widget wheel section
            const Text(
              "Sign up",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              child: const Text("Go Back to Login Page"),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavouritePage()),
                );
              },
              child: const Text("Go to Favourites Page"),
            ),
          ],
        ),
      ),
    );
  }
}

Widget categorySection() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Categories',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('🌻')),
            ElevatedButton(onPressed: () {}, child: Text('🫎')),
            ElevatedButton(onPressed: () {}, child: Text('🌊')),
            ElevatedButton(onPressed: () {}, child: Text('🏔️')),
            ElevatedButton(onPressed: () {}, child: Text('🏖️')),
          ],
        ),
      ],
    ),
  );
}
