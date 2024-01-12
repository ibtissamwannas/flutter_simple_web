import 'package:flutter/material.dart';

import 'custom_list_builder.dart';
import 'custom_sliver_grid.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

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
          child: SilverGridCustom(),
        ),
        CustomListBuilder(),
      ],
    );
  }
}
