import 'package:flutter/material.dart';
import 'custom_sliver_grid.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 40,
        itemBuilder: (context, index) {
          return const AspectRatio(
            aspectRatio: 1,
            child: CustomItemGrid(),
          );
        },
      ),
    );
  }
}
