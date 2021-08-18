import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:messages/Presentation/auth/component/text_field_container.dart';
import 'package:messages/Shared/constants.dart';

class RoudedPasswordField extends GetWidget {
  final ValueChanged<String> onChanged;
  const RoudedPasswordField({Key? key, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          )),
      onChanged: onChanged,
    ));
  }
}
