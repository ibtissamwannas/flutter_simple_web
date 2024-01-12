import 'package:flutter/material.dart';

class SilverGridCustom extends StatelessWidget {
  const SilverGridCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return const CustomItemGrid();
      },
      itemCount: 4,
    );
  }
}

class CustomItemGrid extends StatelessWidget {
  const CustomItemGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 10,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffB4B4B4),
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
    );
  }
}
