import 'package:details_screen/Court.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final Court court;

  const DetailsScreen({Key? key, required this.court}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          // Court image
          Image.network(
            widget.court.imageUrl,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          // Bottom sheet with text and button
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 350,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the text
                  children: [
                    // Court name
                    Text(
                      widget.court.name,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    // Court address
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.location_on_outlined),
                        Text(widget.court.address),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    // Court price and rating
                    Column(
                      children: [
                        Text(
                          'EGP ${widget.court.pricePerHour.toStringAsFixed(2)} per hour',
                          style: const TextStyle(fontSize: 16.0, color: Colors.grey),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                            const Icon(Icons.star, color: Color.fromARGB(255, 21, 156, 19)),
                            Text(
                              
                              widget.court.rating.toStringAsFixed(1),
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    // Court description
                    Text(widget.court.description),
                    const SizedBox(height: 24.0),
                    // Book button with white background and green border
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.green,
                        side: const BorderSide(color: Colors.green, width: 2.0),
                      ),
                      onPressed: () {
                      },
                      child: const Text('Book '),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
