import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../features/navigation/sidebar.dart';

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RippleColors.background,
      body: SafeArea(
        child: Row(
          children: [
            const Sidebar(),
            Expanded(
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
