import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../widgets/common/search_field.dart';
import '../widgets/sidebar/sidebar.dart';

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

                    /// Placeholder Card
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: RippleColors.card,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Center(
                          child: Text(
                            'Continue Listening\n(Coming Soon)',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: RippleColors.textSecondary,
                              fontSize: 20,
                            ),
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
