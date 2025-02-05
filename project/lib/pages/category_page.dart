import 'package:flutter/material.dart';
import 'product_page.dart';
import 'package:project/data/categories.dart';

class CategoryPage extends StatelessWidget {
  final String category;

  const CategoryPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Extract subcategories for the selected category
    final List<String> subcategories = categoriesData[category]?.keys.toList() ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text("$category Category"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Subcategories Header
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Subcategories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            // Display Subcategories as Cards
            Expanded(
              child: GridView.builder(
                itemCount: subcategories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two subcategories per row
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                  childAspectRatio: 3 / 2, // Adjust as needed
                ),
                itemBuilder: (context, index) {
                  String subcategory = subcategories[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductPage(
                            category: category,
                            subcategory: subcategory,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(color: Colors.black26, width: 1), // Light black border
                      ),
                      child: Center(
                        child: Text(
                          subcategory,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
