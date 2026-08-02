import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../widgets/common/search_field.dart';
import '../navigation/sidebar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RippleColors.background,
      body: SafeArea(
        child: Row(
          children: [
            const Sidebar(),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Search Bar
                    const RippleSearchField(),

                    const SizedBox(height: 40),

                    /// Welcome Title
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
            ),
          ],
        ),
      ),
    );
  }
}
