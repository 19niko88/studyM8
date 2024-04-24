import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:studym8/presentation/screens/auth_screens/profile/profile.dart';
import 'package:studym8/resources/theme/elevated_button_style.dart';
import 'package:studym8/resources/theme/text_styles.dart';
import 'package:studym8/widgets/social_item_container.dart';

import '../log_in/log_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              SizedBox(
                height: 28.0,
              ),
              Center(
                child: Text('Welcome!', style: signUpTitleW600),
              ),
              SizedBox(
                height: 11.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: onPressedMyButton,
                      style: signUpElevatedButtonStyle,
                      child: Text('Sign up',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                              color: Colors.white))),
                  SizedBox(
                    width: 10.0,
                  ),
                  ElevatedButton(
                      onPressed: logInButtonAction,
                      style: logInElevatedButtonStyle,
                      child: Text('Login',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0,
                              color: Colors.black)))
                ],
              ),
              SizedBox(
                height: 24.0,
              ),
              Center(
                child:
                    Text('Please register for an account', style: getYouInW400),
              ),
              Container(
                  height: 200,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  child: Column(children: [
                    TextField(
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
                            prefixIcon: Align(
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  """*Password should contain at least 8 characters: 1 lowercase, 1 digit and or a symbol, and 1 uppercase character""",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ElevatedButton(
                    onPressed: signUpButtonAction,
                    style: signUpElevatedButtonStyle1,
                    child: Text('Signup',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Colors.white))),
              ),
              SizedBox(height: 19.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(child: Divider(color: Colors.black)),
                    Text(
                      'or Sign up with',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    Expanded(child: Divider(color: Colors.black))
                  ],
                ),
              ),
              SizedBox(
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
                    text: 'Already have an account?',
                    style: getYouInW400,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Login',
                        style: signUpRichW700,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (_) => const LogIn()));
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

  logInButtonAction() {
    Navigator.pushNamed(context, '/log_in');
  }

  signUpButtonAction() {
    Navigator.pushNamed(context, '/profile');
  }
}
