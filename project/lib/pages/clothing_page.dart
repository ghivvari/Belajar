// lib/pages/clothing_page.dart

import 'package:flutter/material.dart';

class ClothingPage extends StatelessWidget {
  final String clothingName;
  final String clothingImage;
  final String clothingPrice;

  const ClothingPage({super.key, 
    required this.clothingName,
    required this.clothingImage,
    required this.clothingPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(clothingName),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Product Image
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(clothingImage),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              const SizedBox(height: 16),
              // Product Name
              Text(
                clothingName,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              // Product Price
              Text(
                "Rp $clothingPrice",
                style: TextStyle(fontSize: 20, color: Colors.grey[700]),
              ),
              const SizedBox(height: 16),
              // Add to Cart Button
              ElevatedButton(
                onPressed: () {
                  // Implement add to cart functionality
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: const TextStyle(fontSize: 16),
                ),
                child: Text("Add to Cart"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
