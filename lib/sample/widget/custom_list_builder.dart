import 'package:flutter/material.dart';

class CustomListBuilder extends StatelessWidget {
  const CustomListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return const CustomItem();
          },
          childCount: 10,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
      ),
    );
  }
}

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
    );
  }
}
