import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:studym8/generated/codegen_loader.g.dart';
import 'package:studym8/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ru')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        assetLoader: const CodegenLoader(),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      // routes: {
      //   '/': (context) => const StartScreen(),
      //   '/onboarding': (context) => const OnboardingScreen(),
      //   '/get_you_in': (context) => const GetYouInScreen(),
      //   '/sign_up': (context) => const SignUp(),
      //   '/log_in': (context) => const LogInScreen(),
      //   '/profile': (context) => const Profile(),
      //   '/home_page': (context) => const HomePage(),
      // },
    );
  }
}
