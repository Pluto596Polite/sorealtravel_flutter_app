import 'package:flutter/material.dart';
import 'package:sorealtravel_app/widgets/tour_card.dart';

class WidgetWheel extends StatelessWidget {
  const WidgetWheel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0), // Padding around the wheel
      child: SizedBox(
        height: 300, // Set the height of the wheel
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ), // Horizontal scrolling
          children: <Widget>[
            Container(
              width: 300,
              color: Colors.red,
              child: Center(
                child: TourCard(
                  title: "Amazing Tour",
                  location: "paris, France",
                  imageUrl:
                      "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
                  price: 99.99,
                  rating: 4.0,
                  onTap: () {
                    // Handle tap for Item 1
                  },
                ),
              ),
            ),
            const SizedBox(width: 16), // Add spacing
            Container(
              width: 300,
              color: Colors.green,
              child: Center(
                child: TourCard(
                  title: "Beautiful Tour",
                  location: "London, UK",
                  imageUrl:
                      "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
                  price: 89.99,
                  rating: 4.5,
                  onTap: () {
                    // Handle tap for Item 2
                  },
                ),
              ),
            ),
            const SizedBox(width: 16), // Add spacing
            Container(
              width: 300,
              color: Colors.blue,
              child: Center(
                child: TourCard(
                  title: "Adventure Tour",
                  location: "New York, USA",
                  imageUrl:
                      "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
                  price: 120.00,
                  rating: 5.0,
                  onTap: () {
                    // Handle tap for Item 3
                  },
                ),
              ),
            ),
            const SizedBox(width: 16), // Add spacing
            Container(
              width: 300,
              color: Colors.orange,
              child: Center(
                child: TourCard(
                  title: "Cultural Tour",
                  location: "Tokyo, Japan",
                  imageUrl:
                      "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
                  price: 110.00,
                  rating: 4.2,
                  onTap: () {
                    // Handle tap for Item 4
                  },
                ),
              ),
            ),
            // Add spacing
            const SizedBox(width: 16), // Add spacing
            Container(
              width: 300,
              color: Colors.purple,
              child: Center(
                child: TourCard(
                  title: "Relaxing Tour",
                  location: "Bali, Indonesia",
                  imageUrl:
                      "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
                  price: 150.00,
                  rating: 4.8,
                  onTap: () {
                    // Handle tap for Item 5
                  },
                ),
              ),
            ),
            const SizedBox(width: 16), // Add spacing
            Container(
              width: 300,
              color: Colors.yellow,
              child: Center(
                child: TourCard(
                  title: "Historical Tour",
                  location: "Rome, Italy",
                  imageUrl:
                      "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
                  price: 130.00,
                  rating: 4.6,
                  onTap: () {
                    // Handle tap for Item 6
                  },
                ),
              ),
            ),
            const SizedBox(width: 16), // Add spacing
            Container(
              width: 300,
              color: Colors.cyan,
              child: Center(
                child: TourCard(
                  title: "Nature Tour",
                  location: "Sydney, Australia",
                  imageUrl:
                      "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
                  price: 140.00,
                  rating: 4.7,
                  onTap: () {
                    // Handle tap for Item 7
                  },
                ),
              ),
            ),
            const SizedBox(width: 16), // Add spacing
            Container(
              width: 300,
              color: Colors.pink,
              child: Center(
                child: TourCard(
                  title: "Wildlife Tour",
                  location: "Nairobi, Kenya",
                  imageUrl:
                      "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
                  price: 160.00,
                  rating: 4.9,
                  onTap: () {
                    // Handle tap for Item 8
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
