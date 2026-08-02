import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class RippleSearchField extends StatelessWidget {
  const RippleSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: BoxDecoration(
        color: RippleColors.card,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: RippleColors.textSecondary,
          ),
          hintText: 'Search your library...',
          hintStyle: TextStyle(
            color: RippleColors.textSecondary,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 16),
        ),
      ),
    );
  }
}
