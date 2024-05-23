import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:studym8/resources/theme/elevated_button_style.dart';
import 'package:studym8/resources/theme/text_styles.dart';
import 'package:studym8/widgets/social_item_container.dart';

import '../../../../routes/app_router.dart';

@RoutePage()
class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool passenable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 28.0,
              ),
              Center(
                child: Text('Welcome Back', style: signUpTitleW600),
              ),
              const SizedBox(
                height: 11.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: signUpButtonAction,
                      style: logInElevatedButtonStyle,
                      child: const Text('Sign up',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                              color: Colors.black))),
                  const SizedBox(
                    width: 10.0,
                  ),
                  ElevatedButton(
                      onPressed: onPressedMyButton,
                      style: signUpElevatedButtonStyle,
                      child: const Text('Login',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0,
                              color: Colors.white)))
                ],
              ),
              const SizedBox(
                height: 24.0,
              ),
              Center(
                child:
                    Text('Please login to your account', style: getYouInW400),
              ),
              Container(
                  height: 200,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  child: Column(children: [
                    const TextField(
                        decoration: InputDecoration(
                      hintText: "johndoe@gmail.com",
                      labelText: "Email Address",
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(Icons.account_circle),
                      ),
                    )),
                    TextField(
                        obscureText: passenable,
                        decoration: InputDecoration(
                            hintText: "Jo123*&00gts",
                            labelText: "Password",
                            prefixIcon: const Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: Icon(Icons.lock),
                            ),
                            suffix: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (passenable) {
                                      passenable = false;
                                    } else {
                                      passenable = true;
                                    }
                                  });
                                },
                                icon: Icon(passenable == true
                                    ? Icons.visibility
                                    : Icons.visibility_off)))),
                  ])),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text('Forgot Password',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10.0,
                        color: Color(0XffF35B04))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ElevatedButton(
                    onPressed: loginButtonAction,
                    style: signUpElevatedButtonStyle1,
                    child: const Text('Login',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Colors.white))),
              ),
              const SizedBox(height: 19.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(child: Divider(color: Colors.black)),
                    Text(
                      'or Login with',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    Expanded(child: Divider(color: Colors.black))
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
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
                  RichText(
                      text: TextSpan(
                    text: 'New to StudyM8 this?',
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Create Account',
                        style: const TextStyle(
                            color: Color(0XffF35B04),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.router.push(const LogInRoute());
                          },
                      ),
                    ],
                  ))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  signUpButtonAction() {
    context.router.push(const SignUpRoute());
  }

  loginButtonAction() {
    context.router.push(const ProfileRoute());
  }
}

void onPressedMyButton() {}
