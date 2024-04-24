import 'package:flutter/material.dart';

import 'package:studym8/presentation/screens/auth_screens/onboarding/onboarding.dart';
import 'package:studym8/resources/theme/app_colors.dart';

import 'package:studym8/resources/theme/text_styles.dart';







class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      // print("My future is completed");
      Navigator.pushNamed(context, '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              ('StudyM8'),
              style: textStyleStartScreen
            )
          ),
          CircularProgressIndicator(
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
