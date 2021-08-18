import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:messages/Shared/constants.dart';

import 'package:messages/models/ChatMessage.dart';
import 'chat_input_field.dart';
import 'message.dart';

class Body extends GetWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: ListView.builder(
              itemCount: demoChatMessage.length,
              itemBuilder: (context, index) => Message(
                    message: demoChatMessage[index],
                  )),
        )),
        ChatInputField()
      ],
    );
  }
}
