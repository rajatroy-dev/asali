import 'package:asali/models/category.model.dart';
import 'package:flutter/material.dart';

class EachCategory extends StatelessWidget {
  final Category category;

  const EachCategory({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Text(category.name),
            Text(category.description),
            Text(category.value.toString()),
          ],
        ),
      ),
    );
  }
}
