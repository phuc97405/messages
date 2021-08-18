import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:messages/Presentation/Auth/Welcome/welcome.dart';
import 'package:messages/Presentation/Auth/Welcome/welcome_binding.dart';
import 'package:messages/Presentation/Auth/signin_or_signup.dart';
import 'package:messages/Presentation/Auth/signin_or_signup_binding.dart';
import 'package:messages/Presentation/Home/home.dart';
import 'package:messages/Presentation/Home/home_binding.dart';
import 'package:messages/Presentation/messages/messages_binding.dart';
import 'package:messages/Presentation/messages/messages_screen.dart';

import '../theme.dart';
import 'app_binding.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightThemeData(context),
        defaultTransition: Transition.zoom,
        darkTheme: darkThemeData(context),
        initialBinding: AppBinding(),
        initialRoute: '/',
        getPages: [
          GetPage(
              name: '/',
              page: () => Welcome(),
              binding: WelcomeBinding(),
              transition: Transition.leftToRight),
          GetPage(
            name: '/auth',
            page: () => SignInAndSignUp(),
            binding: SignInOrSignUpBinding(),
          ),
          GetPage(
              name: '/home', page: () => HomePage(), binding: HomeBinding()),GetPage(
              name: '/messages', page: () => MessagesScreen(), binding: MessagesBinding()),
        ]);
  }
}
