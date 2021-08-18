import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:messages/Shared/constants.dart';
import 'package:messages/models/ChatMessage.dart';

class TextMessage extends GetWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 0.75, vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(message.isSender ? 1 : 0.08),
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          message.text!,
          style: TextStyle(
              color: message.isSender
                  ? Colors.white
                  : Theme.of(context).textTheme.bodyText1!.color),
        ));
  }
}
