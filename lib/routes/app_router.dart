import 'package:auto_route/auto_route.dart';
import 'package:studym8/presentation/home_page/home_page.dart';
import 'package:studym8/presentation/screens/auth_screens/get_you_in/get_you_in.dart';
import 'package:studym8/presentation/screens/auth_screens/log_in/log_in.dart';
import 'package:studym8/presentation/screens/auth_screens/onboarding/onboarding.dart';
import 'package:studym8/presentation/screens/auth_screens/profile/profile.dart';
import 'package:studym8/presentation/screens/auth_screens/sign_up/sign_up.dart';

import '../start_screen/start_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: StartRoute.page, initial: true),
    AutoRoute(page: HomePageRoute.page),
    AutoRoute(page: SignUpRoute.page),
    AutoRoute(page: GetYouInRoute.page),
    AutoRoute(page: OnboardingRoute.page),
    AutoRoute(page: LogInRoute.page),
    AutoRoute(page: ProfileRoute.page),

  ];
}