import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class SidebarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool selected;
  final VoidCallback? onTap;

  const SidebarItem({
    super.key,
    required this.icon,
    required this.title,
    this.selected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: selected
                  ? const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFF1E88FF), Color(0xFF1565C0)],
                    )
                  : null,
            ),
            child: Row(
              children: [
                const SizedBox(width: 18),

                Icon(
                  icon,
                  size: 22,
                  color: selected ? Colors.white : RippleColors.textSecondary,
                ),

                const SizedBox(width: 16),

                Text(
                  title,
                  style: TextStyle(
                    color: selected ? Colors.white : RippleColors.textSecondary,
                    fontSize: 16,
                    fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
