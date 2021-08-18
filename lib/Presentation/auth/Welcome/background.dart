import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:messages/Shared/constants.dart';
import 'package:messages/Shared/primary_button.dart';

class Background extends GetWidget {
  Widget build(BuildContext context) {
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
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? 'assets/icons/message.png'
                    : 'assets/icons/message.png',
                height: 146,
              ),
              Spacer(),
              PrimaryButton(
                  text: 'LOGIN',
                  press: () {
                    Get.toNamed('/signin');
                  }),
              SizedBox(
                height: kDefaultPadding * 1.5,
              ),
              PrimaryButton(
                  color: kPrimaryColor.withOpacity(0.1),
                  text: 'SIGN UP',
                  press: () {
                    Get.toNamed('/signup');
                  }),
              Spacer(
                flex: 2,
              )
            ],
          ),
        ),
      )),
    );
  }
}
