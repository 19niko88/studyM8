import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:studym8/resources/theme/app_colors.dart';

import 'package:studym8/resources/theme/text_styles.dart';
import 'package:studym8/routes/app_router.dart';

@RoutePage()
class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // print("My future is completed");
      context.router.push(const OnboardingRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(('StudyM8'), style: textStyleStartScreen)),
          const CircularProgressIndicator(
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
