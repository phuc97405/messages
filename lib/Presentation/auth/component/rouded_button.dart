import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:messages/Shared/constants.dart';

class RoudedButton extends GetWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const RoudedButton(
      {Key? key,
      required this.text,
      required this.press,
      this.color = kPrimaryColor,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(29),
      child: Container(
        width: Get.width * 0.8,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(29),
        ),
        child: TextButton(
          style: TextButton.styleFrom(
              primary: color,
              padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding, horizontal: kDefaultPadding * 2)),
          onPressed: () {
            press();
          },
          child: Text(
            text,
            style: TextStyle(color: color),
          ),
        ),
      ),
    );
  }
}
