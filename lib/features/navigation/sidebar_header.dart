import 'package:flutter/material.dart';

class SidebarHeader extends StatelessWidget {
  const SidebarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 22),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ripple_logo.png',
                width: 130,
                height: 130,
                fit: BoxFit.contain,
              ),

              const SizedBox(width: 8),

              const Expanded(
                child: Text(
                  'ripple',
                  maxLines: 1,
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.6,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 6),

        const Text(
          'Find your rhythm',
          style: TextStyle(
            color: Color(0xFF1AA8FF),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),

        const SizedBox(height: 18),

        const Divider(
          color: Colors.white12,
          indent: 20,
          endIndent: 20,
          height: 1,
        ),

        const SizedBox(height: 10),
      ],
    );
  }
}
