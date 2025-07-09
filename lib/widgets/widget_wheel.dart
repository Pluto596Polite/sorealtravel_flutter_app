import 'package:flutter/material.dart';
import 'package:sorealtravel_app/widgets/tourCardContainer.dart';
import 'package:sorealtravel_app/widgets/tour_card.dart';

class WidgetWheel extends StatelessWidget {
  const WidgetWheel({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TourCard> tourItems = [
      TourCard(
        title: "Amazing Tour",
        location: "Paris, France",
        imageUrl: "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
        price: 99.99,
        rating: 4.0,
        onTap: () {},
      ),
      TourCard(
        title: "Beautiful Tour",
        location: "London, UK",
        imageUrl: "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
        price: 89.99,
        rating: 4.5,
        onTap: () {},
      ),
      // Add more items...
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 300,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          itemCount: tourItems.length,
          separatorBuilder: (_, __) => const SizedBox(width: 16),
          itemBuilder: (context, index) {
            return TourCardContainer(item: tourItems[index]);
          },
        ),
      ),
    );
  }
}
