import 'package:flutter/material.dart';

import 'sidebar_item.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SidebarItem(icon: Icons.home_outlined, title: 'Home', selected: true),
        SidebarItem(icon: Icons.music_note_outlined, title: 'Songs'),
        SidebarItem(icon: Icons.album_outlined, title: 'Albums'),
        SidebarItem(icon: Icons.person_outline, title: 'Artists'),
        SidebarItem(icon: Icons.favorite_border, title: 'Favorites'),
        SidebarItem(icon: Icons.queue_music_outlined, title: 'Playlists'),
      ],
    );
  }
}
