import 'package:flutter/material.dart';
import 'package:sorealtravel_app/screens/favourites_page.dart';

import '../main.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});// This is the constructor for the HomePage widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prototype App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Sign up", style: TextStyle(fontStyle: FontStyle.italic)),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            }, child: const Text("Go Back to Login Page")),


            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  FavouritePage()),
              );
            }, child: const Text("Go to Favourites Page")),
            categorySection(),
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
            ElevatedButton(onPressed: () {}, child: Text('Category 1')),
            ElevatedButton(onPressed: () {}, child: Text('Category 2')),
            ElevatedButton(onPressed: () {}, child: Text('Category 3')),
          ],
        ),
      ],
    ),
  );
}
