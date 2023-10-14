
import 'package:flutter/material.dart';
import 'package:reach_out/data/models/category_data.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, required this.categoryData, required this.onTap,
  });

  final CategoryData categoryData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              child: Image.network(
                categoryData.categoryImg ?? '', height: 50,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.warning_amber_sharp);
                },
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              categoryData.categoryName ?? '',
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  letterSpacing: 0.4),
            ),

          ],
        ),
      ),
    );
  }
}