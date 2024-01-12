import 'package:flutter/material.dart';
import 'package:flutter_web/sample/widget/custom_list.dart';
import 'package:flutter_web/sample/widget/custom_list_builder.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomList(),
        ),
        CustomListBuilder(),
      ],
    );
  }
}
