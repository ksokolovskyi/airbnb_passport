import 'package:flutter/material.dart';

class ApartmentsGrid extends StatelessWidget {
  const ApartmentsGrid({
    required this.crossAxisCount,
    required this.itemCount,
    required this.itemBuilder,
    super.key,
  });

  final int crossAxisCount;

  final int itemCount;

  final NullableIndexedWidgetBuilder itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      addRepaintBoundaries: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 0.75,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      padding: const EdgeInsets.all(40),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
