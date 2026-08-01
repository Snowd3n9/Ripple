import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 288,
      color: const Color(0xFF0C1220),
      child: Column(
        children: [
          const SizedBox(height: 26),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 82,
                  height: 82,
                  child: Center(
                    child: Image.asset(
                      'assets/images/ripple_logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                const SizedBox(width: 8),

                const Expanded(
                  child: Text(
                    'ripple',
                    maxLines: 1,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.2,
                      height: 1.0,
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
              color: Color(0xFF1AA8FF),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 22),

          const Divider(color: Colors.white12, indent: 22, endIndent: 22),

          const SizedBox(height: 16),

          Expanded(
            child: Column(
              children: [
                _item(Icons.home_outlined, 'Home', true),
                _item(Icons.music_note_outlined, 'Songs', false),
                _item(Icons.album_outlined, 'Albums', false),
                _item(Icons.person_outline, 'Artists', false),
                _item(Icons.favorite_border, 'Favorites', false),
                _item(Icons.queue_music_outlined, 'Playlists', false),

                const Spacer(),

                const Divider(color: Colors.white12, indent: 22, endIndent: 22),

                const SizedBox(height: 14),

                _item(Icons.settings_outlined, 'Settings', false),
                _item(Icons.info_outline, 'About Ripple', false),

                const SizedBox(height: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget _item(IconData icon, String title, bool selected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: selected ? const Color(0xFF2B7FFF) : Colors.transparent,
        ),
        child: Row(
          children: [
            const SizedBox(width: 18),
            Icon(
              icon,
              size: 24,
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
    );
  }
}
