import 'package:flutter/material.dart';

import 'home_page.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favourites')),
      body: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            color: Colors.blue,
            margin: const EdgeInsets.all(8.0),
            child: Text("Container for Favourites Page"),
          ),
          const Divider(
            height: 2.5,
            thickness: 2,
            color: Colors.black,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            height: 130,
            width: double.infinity,
            color: Colors.green,
            margin: const EdgeInsets.all(8.0),
            child: Text("Container for Favourites Page"),
          ),

          const Divider(
            height: 2.5,
            thickness: 2,
            color: Colors.black,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            height: 130,
            width: double.infinity,
            color: Colors.red,
            margin: const EdgeInsets.all(8.0),
            child: Text("Container for Favourites Page"),
          ),
          const Divider(
            height: 2.5,
            thickness: 2,
            color: Colors.black,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            height: 130,
            width: double.infinity,
            color: Colors.yellow,
            margin: const EdgeInsets.all(8.0),
            child: Text("Container for Favourites Page"),
          ),

          const Divider(
            height: 2.5,
            thickness: 2,
            color: Colors.black,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            height: 130,
            width: double.infinity,
            color: Colors.purple,
            margin: const EdgeInsets.all(8.0),
            child: Text("Container for Favourites Page"),
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
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: const Text("Go Back to Login Page"),
          ),
        ],
      ),
    );
  }
}
