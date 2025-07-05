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
            child: Text("Container for Favourites Page"),
            margin: const EdgeInsets.all(8.0),
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
            child: Text("Container for Favourites Page"),
            margin: const EdgeInsets.all(8.0),
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
            child: Text("Container for Favourites Page"),
            margin: const EdgeInsets.all(8.0),
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
            child: Text("Container for Favourites Page"),
            margin: const EdgeInsets.all(8.0),
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
            child: Text("Container for Favourites Page"),
            margin: const EdgeInsets.all(8.0),
          ),

          ElevatedButton(
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
