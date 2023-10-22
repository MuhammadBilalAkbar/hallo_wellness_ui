import 'package:flutter/material.dart';
import 'package:hallo_wellness_ui/pages/agent/1_agent_profile_agent.dart';
import 'package:hallo_wellness_ui/pages/user/2_home.dart';
import 'package:hallo_wellness_ui/pages/user/3_agent_profile_user.dart';
import 'package:hallo_wellness_ui/pages/user/4_user_profile.dart';
import 'package:hallo_wellness_ui/pages/user/5_calling_screen.dart';
import 'package:hallo_wellness_ui/res/colors/app_colors.dart';

import 'pages/user/1_get_started.dart';

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
        primaryColor: AppColors.primaryAppColor,
        // primarySwatch: MaterialColor(
        //   0xFFFFD7C2,
        //   {
        //     50: Color(0xFFFFD7C2),
        //     100: Colors.yellow[100],
        //     200: Colors.yellow[200],
        //     300: Colors.yellow[300],
        //     400: Colors.yellow[400],
        //     500: Colors.yellow[500],
        //     600: Colors.yellow[600],
        //     700: Colors.yellow[800],
        //     800: Colors.yellow[900],
        //     900: Colors.yellow[700],
        //   },
        // ),
        useMaterial3: true,
        fontFamily: 'Matter',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryAppColor,
            foregroundColor: AppColors.whiteColor,
          ),
        ),
      ),
      // home: const GetStarted(), // PAGE 1, Get Started
      // home: const Home(), // PAGE 4, home
      // home: const AgentProfileUser(), // Page 6, agent profile to show to user
      // home: const UserProfile(), // Frame 2052
      // home: const AgentProfileAgent(), // Frame 2053, to show to agent
      home: const CallingScreen(), // PAGE 9, Calling Screen
    );
  }
}
