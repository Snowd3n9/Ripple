import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/ui/ripple_search_field.dart';
import '../../shared/layouts/main_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RippleSearchField(),

            const SizedBox(height: 40),

            const Text(
              'Welcome Back',
              style: TextStyle(
                color: RippleColors.textPrimary,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Pick up where you left off.',
              style: TextStyle(
                color: RippleColors.textSecondary,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 40),

            Expanded(
              child: Center(
                child: Text(
                  'Music Library Coming Soon',
                  style: TextStyle(
                    color: RippleColors.textSecondary,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
