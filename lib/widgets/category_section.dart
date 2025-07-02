import 'package:flutter/material.dart';
Widget categorySection() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Categories',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
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