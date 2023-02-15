import 'package:flutter/material.dart';

class SubcategoryScreen extends StatefulWidget {
  const SubcategoryScreen({super.key});

  @override
  State<SubcategoryScreen> createState() => _SubcategoryScreenState();
}

class _SubcategoryScreenState extends State<SubcategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Heading: Sub Category'),
        Text('Sub Category Total'),
        // Below this will be visible only on expansion
        Text('List of items with description and price'),
      ],
    );
  }
}
