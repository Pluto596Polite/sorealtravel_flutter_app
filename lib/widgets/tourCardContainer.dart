import 'package:flutter/material.dart';
import 'package:sorealtravel_app/widgets/tour_card.dart';

class TourCardContainer extends StatelessWidget {
  final TourCard item;

  const TourCardContainer({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.white, // Or any specific color you want
      decoration: BoxDecoration(
        color: Colors.white, // Base color
        borderRadius: BorderRadius.circular(12), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      padding: const EdgeInsets.all(8),
      child: Center(
        child: TourCard(
          title: item.title,
          location: item.location,
          imageUrl: item.imageUrl,
          price: item.price,
          rating: item.rating,
          onTap: item.onTap,
        ),
      ),
    );
  }
}
