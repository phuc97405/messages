import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:messages/Shared/constants.dart';

class AlreadyHaveAnAccountCheck extends GetWidget {
  final bool login;
  final Function press;

  const AlreadyHaveAnAccountCheck(
      {Key? key, this.login = true, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't I have an Account ? " : 'Already have an Account ?',
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: () {
            press();
          },
          child: Text(
            login ? 'Sign Up' : 'Sign In',
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
