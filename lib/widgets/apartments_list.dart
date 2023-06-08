import 'package:flutter/material.dart';

class ApartmentsList extends StatelessWidget {
  const ApartmentsList({
    required this.itemCount,
    required this.itemBuilder,
    super.key,
  });

  final int itemCount;

  final NullableIndexedWidgetBuilder itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(height: 20),
      padding: const EdgeInsets.all(40),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return AspectRatio(
          aspectRatio: 0.75,
          child: itemBuilder(context, index),
        );
      },
    );
  }
}
