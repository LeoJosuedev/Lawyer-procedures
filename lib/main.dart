
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tramites_app/src/features/authentication/screens/onboarding/onboarding.dart';
import 'package:tramites_app/src/utillities/theme/theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnboardingScreen());
  }
}
