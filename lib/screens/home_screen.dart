import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
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
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 56,
                      decoration: BoxDecoration(
                        color: RippleColors.card,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),

                    const SizedBox(height: 40),

                    const Text(
                      'Welcome back',
                      style: TextStyle(
                        color: RippleColors.textPrimary,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      'Ready for your next session?',
                      style: TextStyle(
                        color: RippleColors.textSecondary,
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 40),

                    const Text(
                      'Content coming next...',
                      style: TextStyle(
                        color: RippleColors.textSecondary,
                        fontSize: 18,
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
