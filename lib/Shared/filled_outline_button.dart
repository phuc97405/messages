import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:messages/Shared/constants.dart';

class FillOutlineButton extends GetView {
  const FillOutlineButton(
      { Key ? key,
      this.isFilled = true,
      required this.press,
      required this.text})
      : super(key: key);

  final bool isFilled;
  final VoidCallback press;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: Colors.white)),
      color: isFilled ? Colors.white : Colors.transparent,      onPressed: press,
      child: Text(text,style: TextStyle(color: isFilled?kContentColorLightTheme:Colors.white),),
      
    );
  }
}
