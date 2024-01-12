import 'package:flutter/material.dart';
import 'package:flutter_web/sample/widget/custom_drawer.dart';
import 'package:flutter_web/sample/widget/tablet_layout.dart';

import 'custom_desktop_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 3,
          child: TabletLayout(),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              top: 16,
            ),
            child: CustomDesktopWidget(),
          ),
        )
      ],
    );
  }
}
