import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messages/Presentation/Auth/signin_or_signup_controller.dart';
import 'package:messages/Shared/constants.dart';
import 'package:messages/Shared/primary_button.dart';

class SignInAndSignUp extends GetView<SignInOrSigUpController> {
  Widget build(BuildContext context) {
    // final controllerApp = Get.find<AppController>();
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Center(
        child: Column(
          children: <Widget>[
            Spacer(
              flex: 2,
            ),
            // Text(
            //   controllerApp.userData != null
            //       ? controllerApp.prettyPrint(controllerApp.userData)
            //       : "NO LOGGED",
            //   style: TextStyle(color: Colors.black),
            // ),
            Image.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? 'assets/icons/logo.jpeg'
                  : 'assets/icons/logo.jpeg',
              height: 146,
            ),
            Spacer(),
            PrimaryButton(
                // color: Color(0x49a9ff),
                text: 'Sign In With Facebook',
                press: () {}),
            SizedBox(
              height: kDefaultPadding * 1.5,
            ),
            PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: 'Sign Up',
                press: () {
                  Get.toNamed('/home');
                }),

            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    )));
  }
}
