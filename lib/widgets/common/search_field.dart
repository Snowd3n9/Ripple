import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class RippleSearchField extends StatelessWidget {
  const RippleSearchField({super.key, this.hintText = 'Search songs...'});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: const Icon(Icons.search_rounded),
          filled: true,
          fillColor: RippleColors.card,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
