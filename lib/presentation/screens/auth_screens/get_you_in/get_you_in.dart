import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:studym8/presentation/screens/auth_screens/sign_up/sign_up.dart';
import 'package:studym8/resources/theme/elevated_button_style.dart';
import 'package:studym8/resources/theme/text_styles.dart';
import 'package:studym8/widgets/social_item_container.dart';

import '../widgets/social_item_container.dart';

class GetYouIn extends StatelessWidget {
  const GetYouIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          children: [
            Image(image: AssetImage('resources/images/Clip-path-group04.png')),
            Text('Let’s get you in',
                textAlign: TextAlign.center, style: getYouIn1),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialItemContainer(
                      title: "Google",
                      image: 'resources/images/G-image.png',
                      onPressed: () {},
                    ),
                    SocialItemContainer(
                      title: "Apple",
                      image: 'resources/images/Apple-image.png',
                      onPressed: () {},
                    ),
                    SocialItemContainer(
                      title: "Facebook",
                      image: 'resources/images/F-image.png',
                      onPressed: () {},
                    ),
                  ],
                ),
                Text("Or", textAlign: TextAlign.center, style: getYouIn1),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: getYouInElevatedButtonStyle,
                    child: Text(
                      "Sign in with password",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),
                ),

                ///TODO: - RichText - TextSpan - recognizer
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'New to StudyM8 this?',
                      style: getYouInW400,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Create Account',
                          style: getYouInRichW400,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, '/sign_up');
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        )));
  }
}

void onPressedMyButton() {
  setState() {}
}
