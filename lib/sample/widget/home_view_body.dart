import 'package:flutter/material.dart';
import 'package:flutter_web/sample/widget/adaptive_layout.dart';
import 'package:flutter_web/sample/widget/tablet_layout.dart';

import 'desktop_layout.dart';
import 'mobile_layout.dart';

class HomeViewWidget extends StatelessWidget {
  const HomeViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AdaptiveLayout(
        desktopLayout: (context) => const DesktopLayout(),
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
      ),
    );
  }
}
