import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'theme/app_theme.dart';

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
