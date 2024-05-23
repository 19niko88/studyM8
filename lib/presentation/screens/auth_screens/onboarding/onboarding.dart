import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:studym8/generated/locale_keys.g.dart';
import 'package:studym8/model/onboarding_model.dart';
import 'package:studym8/resources/theme/app_colors.dart';
import 'package:studym8/resources/theme/elevated_button_style.dart';
import 'package:studym8/resources/theme/text_styles.dart';
import 'package:studym8/routes/app_router.dart';
import 'package:easy_localization/easy_localization.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int page = 0;
  List<OnboardingModel> pagesData = [
    const OnboardingModel(
        title: 'learn',
        desc1: 'Learn anytime & anywhere easily and conveniently',
        desc2: '1 of 3',
        image: 'resources/images/clip-path-group.png'),
    const OnboardingModel(
        title: 'Knowledge',
        desc1: 'Gain knowledge & skills ready for the job market',
        desc2: '2 of 3',
        image: 'resources/images/Clip-path-group02.png'),
    const OnboardingModel(
        title: 'Collaborative Study',
        desc1: 'Study in groups, Share ideas',
        desc2: '3 of 3',
        image: 'resources/images/Clip-path-group03.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    pagesData[page].title,
                    textAlign: TextAlign.center,
                    style: onboardingTitle,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Image(image: AssetImage(pagesData[page].image)),
                  Text(pagesData[page].desc1,
                      textAlign: TextAlign.center, style: onboardingDesc1),
                  Text(pagesData[page].desc2,
                      textAlign: TextAlign.center, style: onboardingDesc2)
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: onPressedMyButton,
                          style: onboardingElevatedButtonStyle,
                          child: Text(
                            LocaleKeys.skip.tr(),
                            style: buttonTextStyle,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: nextButtonAction,
                          style: onboardingElevatedButtonStyle,
                          child: Text(
                            LocaleKeys.next.tr(),
                            style: buttonTextStyle,
                          ),
                        ),
                      ),
                    ]),
              )
            ]),
      ),
    );
  }

  skipButtonAction() {
    context.router.push(const GetYouInRoute());
  }

  nextButtonAction() {
    if (page < pagesData.length - 1) {
      setState(() {
        page++;
      });
    } else {
      skipButtonAction();
    }
  }
}

void onPressedMyButton() {}
