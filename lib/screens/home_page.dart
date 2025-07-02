import 'package:flutter/material.dart';
import 'package:sorealtravel_app/screens/favourites_page.dart';
import 'package:sorealtravel_app/widgets/tour_card.dart';

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
            TourCard(
              title: "Amazing Tour",
              location: "Paris, France",
              imageUrl:
                  "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
              price: 199.99,
              rating: 4.5,
              onTap: () {
                // Handle tap
              },
            ),

            const Text(
              "Sign up",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              child: const Text("Go Back to Login Page"),
            ),

            ElevatedButton(
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
