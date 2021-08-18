import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:messages/Presentation/Auth/Welcome/welcome.dart';
import 'package:messages/Presentation/Home/home.dart';
import 'package:messages/Presentation/Home/home_binding.dart';
import 'package:messages/Presentation/auth/Login/login_binding.dart';
import 'package:messages/Presentation/auth/Login/login_screen.dart';
import 'package:messages/Presentation/auth/Signup/sign_up_binding.dart';
import 'package:messages/Presentation/auth/Signup/sign_up_screen.dart';
import 'package:messages/Presentation/auth/Welcome/background.dart';
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
              transition: Transition.leftToRight),
          GetPage(
            name: '/auth',
            page: () => Background(),
          ),
          GetPage(
              name: '/signin',
              page: () => LoginScreen(),
              binding: LoginBinding()),
          GetPage(
              name: '/signup',
              page: () => SignUpScreen(),
              binding: SignUpBinding()),
          GetPage(
              name: '/home', page: () => HomePage(), binding: HomeBinding()),
          GetPage(
              name: '/messages',
              page: () => MessagesScreen(),
              binding: MessagesBinding()),
        ]);
  }
}
