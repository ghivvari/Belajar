// lib/pages/product_page.dart

import 'package:flutter/material.dart';
import 'clothing_page.dart';
import 'package:project/data/categories.dart';

class ProductPage extends StatelessWidget {
  final String category;
  final String subcategory;

  const ProductPage({super.key, required this.category, required this.subcategory});

  @override
  Widget build(BuildContext context) {
    // Extract products for the selected category and subcategory
    final List<Map<String, String>> products = categoriesData[category]?[subcategory] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text("$subcategory in $category"),
      ),
      body: products.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two products per row
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                  childAspectRatio: 0.7, // Adjust as needed
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ClothingPage(
                            clothingName: product["name"]!,
                            clothingImage: product["image"]!,
                            clothingPrice: product["price"]!,
                          ),
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.black12,
                                width: 2,
                              ),
                              image: DecorationImage(
                                image: AssetImage(product["image"]!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          product["name"]!,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Rp ${product["price"]}',
                          style: const TextStyle(fontSize: 14, color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          : const Center(
              child: Text(
                "No products available in this category.",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
    );
  }
}
