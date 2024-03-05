import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome, Fadly',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Icon(
                Icons.notifications,
                size: 48,
                color: Colors.blue,
              ),
              SizedBox(height: 20),
              Container(
                width: 240,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Recommended Place',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PlaceIcon(imageUrl: 'assets/img/kucing.jpg', label: 'Beach'),
                  PlaceIcon(imageUrl: 'assets/img/kucing.jpg', label: 'Mountain'),
                  PlaceIcon(imageUrl: 'assets/img/kucing.jpg', label: 'Restaurant'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlaceIcon extends StatelessWidget {
  final String imageUrl;
  final String label;

  const PlaceIcon({required this.imageUrl, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageUrl, width: 64, height: 64),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
