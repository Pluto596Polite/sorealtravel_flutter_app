import 'package:flutter/material.dart';
import 'package:sorealtravel_app/screens/favourites_page.dart';
import 'package:sorealtravel_app/widgets/widget_wheel.dart';
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
              imageUrl: "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
              price: 199.99,
              onTap: () {
                // Handle tap
              },
              rating: 4.5,
            ),
            TourCard(
              title: "Grand Canyon Adventure",
              location: "Grand Canyon, USA",
              imageUrl: "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
              price: 299.99,
              onTap: () {
                // Handle tap
              },
              rating: 4.8,
            ),
            TourCard(
              title: "Tokyo City Lights",
              location: "Tokyo, Japan",
              imageUrl: "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
              price: 399.99,
              onTap: () {
                // Handle tap
              },
              rating: 4.9,
            ),
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
