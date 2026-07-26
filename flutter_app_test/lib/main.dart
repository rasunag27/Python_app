import 'package:flutter/material.dart';
import 'constants/app_colors.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const PythonMasterApp());
}

class PythonMasterApp extends StatelessWidget {
  const PythonMasterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Python Master',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}