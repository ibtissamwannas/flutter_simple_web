import 'package:flutter/material.dart';

import '../model/drawer_item_model.dart';
import 'custom_item_drawer.dart';

class CustomlistItemDrawer extends StatelessWidget {
  final List<DrawerItemModel> items;
  const CustomlistItemDrawer({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomItemDrawer(
          drawerItemModel: items[index],
        );
      },
    );
  }
}
