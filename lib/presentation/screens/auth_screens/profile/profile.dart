import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:studym8/resources/theme/app_colors.dart';
import 'package:studym8/resources/theme/elevated_button_style.dart';
import 'package:studym8/routes/app_router.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColorProfile,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'Set up profile',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 184.0,
                  width: 184.0,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('resources/images/Ellipse 1.png'),
                          fit: BoxFit.fill),
                      shape: BoxShape.circle),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        // readOnly: true,

                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xffE6E6E6),
                            contentPadding: const EdgeInsets.only(
                                left: 24.0, bottom: 21.0, top: 21.0),
                            hintText: 'Benjamin|',
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffE6E6E6)),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffE6E6E6)),
                              borderRadius: BorderRadius.circular(15.0),
                            )),
                      ),
                      const Text(
                        '*Username should contain numbers',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      ElevatedButton(
                          onPressed: continueButtonAction,
                          style: getYouInElevatedButtonStyle,
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0,
                                color: Colors.white),
                          ))
                    ])
              ],
            ),
          ),
        )));
  }

  continueButtonAction() {
    context.router.push(const HomePageRoute());
  }
}
