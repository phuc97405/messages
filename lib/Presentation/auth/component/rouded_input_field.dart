import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:messages/Presentation/auth/component/text_field_container.dart';
import 'package:messages/Shared/constants.dart';

class RoudedInputField extends GetWidget {
  final String hinText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoudedInputField(
      {Key? key,
      required this.hinText,
      required this.icon,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            hintText: hinText,
            border: InputBorder.none),
      ),
    );
  }
}
