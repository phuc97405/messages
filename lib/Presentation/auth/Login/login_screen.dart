import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:messages/Presentation/auth/Login/login_controller.dart';
import 'package:messages/Presentation/auth/component/already_have_an_account_check.dart';

import 'package:messages/Presentation/auth/component/rouded_button.dart';
import 'package:messages/Presentation/auth/component/rouded_input_field.dart';
import 'package:messages/Presentation/auth/component/rouded_password_changed.dart';
import 'package:messages/Presentation/home/home.dart';
import 'package:messages/Shared/constants.dart';

class LoginScreen extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LOGIN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              SvgPicture.asset(
                'assets/icons/chat.svg',
                height: height * 0.35,
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              RoudedInputField(
                icon: Icons.person,
                hinText: 'Your Email',
                onChanged: (value) {
                  print(value);
                },
              ),
              RoudedPasswordField(
                onChanged: (value) {},
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              RoudedButton(
                text: 'LOGIN',
                press: () {
                  Get.toNamed('/home');
                },
                color: Colors.white,
              ),
              AlreadyHaveAnAccountCheck(
                login: true,
                press: () {
                  Get.toNamed('/signup');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
