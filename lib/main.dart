import 'package:flutter/material.dart';
import 'package:hallo_wellness_ui/res/colors/app_colors.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hallo Wellness UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryAppColor),
        useMaterial3: true,
        fontFamily: 'Matter',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryAppColor,
            foregroundColor: AppColors.whiteColor,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
