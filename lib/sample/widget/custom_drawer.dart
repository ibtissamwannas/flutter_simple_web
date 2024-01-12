import 'package:flutter/material.dart';

import '../model/drawer_item_model.dart';
import 'custome_list_item_drawer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> items = [
    DrawerItemModel(
      title: "D A S H B O A R D",
      icon: Icons.home,
    ),
    DrawerItemModel(
      title: "S E T T I N G S",
      icon: Icons.settings,
    ),
    DrawerItemModel(
      title: "A B O U T",
      icon: Icons.info,
    ),
    DrawerItemModel(
      title: "L O G O U T",
      icon: Icons.logout,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffDBDBDB),
      elevation: 0,
      child: Column(
        children: const [
          DrawerHeader(
            child: Icon(
              Icons.favorite,
              color: Colors.black,
              size: 50,
            ),
          ),
          CustomlistItemDrawer(
            items: items,
          ),
        ],
      ),
    );
  }
}
