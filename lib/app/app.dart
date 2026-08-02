import 'package:flutter/material.dart';

import '../core/theme/app_theme.dart';
import '../features/home/home_screen.dart';

class RippleApp extends StatelessWidget {
  const RippleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ripple',
      debugShowCheckedModeBanner: false,
      theme: rippleTheme,
      home: const HomeScreen(),
    );
  }
}
