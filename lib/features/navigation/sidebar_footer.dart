import 'package:flutter/material.dart';

import 'sidebar_item.dart';

class SidebarFooter extends StatelessWidget {
  const SidebarFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      minimum: const EdgeInsets.only(bottom: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(
            color: Colors.white12,
            indent: 20,
            endIndent: 20,
            height: 1,
          ),

          const SizedBox(height: 12),

          const SidebarItem(icon: Icons.settings_outlined, title: 'Settings'),

          const SidebarItem(icon: Icons.info_outline, title: 'About Ripple'),
        ],
      ),
    );
  }
}
