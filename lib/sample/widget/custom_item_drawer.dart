import 'package:flutter/material.dart';
import 'package:flutter_web/sample/model/drawer_item_model.dart';

class CustomItemDrawer extends StatelessWidget {
  const CustomItemDrawer({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        drawerItemModel.icon,
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          drawerItemModel.title,
        ),
      ),
    );
  }
}
