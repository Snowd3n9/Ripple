import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 288,
      color: const Color(0xFF0C1220),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/branding/ripple_icon.png',
                        width: 64,
                        height: 64,
                      ),

                      const SizedBox(width: 14),

                      const Expanded(
                        child: Text(
                          'Ripple',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  'Find your rhythm',
                  style: TextStyle(
                    color: Color(0xFF2F7CFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 22),

                const Divider(
                  color: Colors.white12,
                  indent: 22,
                  endIndent: 22,
                ),

                const SizedBox(height: 18),

                _item(Icons.home_outlined, 'Home', true),
                _item(Icons.music_note_outlined, 'Songs', false),
                _item(Icons.album_outlined, 'Albums', false),
                _item(Icons.person_outline, 'Artists', false),
                _item(Icons.favorite_border_outlined, 'Favorites', false),
                _item(Icons.queue_music_outlined, 'Playlists', false),

                const SizedBox(height: 28),

                const Divider(
                  color: Colors.white12,
                  indent: 22,
                  endIndent: 22,
                ),

                const SizedBox(height: 18),

                _item(Icons.settings_outlined, 'Settings', false),
                _item(Icons.info_outline, 'About Ripple', false),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _item(
    IconData icon,
    String title,
    bool selected,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Container(
        height: 54,
        decoration: BoxDecoration(
          color: selected
              ? const Color(0xFF2F7CFF)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            const SizedBox(width: 18),

            Icon(
              icon,
              color: selected
                  ? Colors.white
                  : RippleColors.textSecondary,
            ),

            const SizedBox(width: 16),

            Text(
              title,
              style: TextStyle(
                color: selected
                    ? Colors.white
                    : RippleColors.textSecondary,
                fontSize: 16,
                fontWeight:
                    selected ? FontWeight.w600 : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
