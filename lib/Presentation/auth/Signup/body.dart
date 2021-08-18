import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:messages/Presentation/auth/Signup/sign_up_controller.dart';

import 'package:messages/Presentation/auth/component/rouded_button.dart';
import 'package:messages/Presentation/auth/component/rouded_input_field.dart';
import 'package:messages/Presentation/auth/component/rouded_password_changed.dart';
import 'package:messages/Shared/constants.dart';

import 'or_divided.dart';

class Body extends GetWidget<SignUpController> {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'SIGN UP',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        SvgPicture.asset(
          'assets/icons/chat.svg',
          height: Get.height * 0.35,
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
          text: 'SIGN UP',
          press: () {},
          color: Colors.white,
        ),
        // AlreadyHaveAnAccountCheck(
        //   login: false,
        //   press: () {
        //     Get.toNamed('/signin');
        //   },
        // )
        OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: kPrimaryColor)),
              child: Icon(
                Icons.facebook_rounded,
                size: kDefaultPadding,
              ),
            )
          ],
        )
      ],
    ));
  }
}
