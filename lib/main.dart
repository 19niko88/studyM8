import 'package:flutter/material.dart';
import 'package:studym8/presentation/home_page/home_page.dart';
import 'package:studym8/presentation/screens/auth_screens/get_you_in/get_you_in.dart';
import 'package:studym8/presentation/screens/auth_screens/log_in/log_in.dart';
import 'package:studym8/presentation/screens/auth_screens/onboarding/onboarding.dart';
import 'package:studym8/presentation/screens/auth_screens/profile/profile.dart';
import 'package:studym8/presentation/screens/auth_screens/sign_up/sign_up.dart';
import 'start_screen//start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const StartScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/get_you_in': (context) => const GetYouIn(),
        '/sign_up': (context) => const SignUp(),
        '/log_in': (context) => const LogIn(),
        '/profile': (context) => const Profile(),
        '/home_page': (context) => const HomePage(),
      },
    );
  }
}
