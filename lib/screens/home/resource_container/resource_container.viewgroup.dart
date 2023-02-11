import 'package:asali/enum/wealth.enum.dart';
import 'package:flutter/material.dart';

class ResourceContainer extends StatelessWidget {
  final Wealth type;
  final double value;

  const ResourceContainer({
    super.key,
    required this.type,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            type == Wealth.assets
                ? const Text('Total Assets')
                : const Text('Total Liabilities'),
            const Divider(height: 2),
            Text(value.toString()),
          ],
        ),
      ),
    );
  }
}
