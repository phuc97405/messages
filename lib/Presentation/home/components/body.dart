import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:messages/Presentation/Home/home_controller.dart';
import 'package:messages/Shared/constants.dart';
import 'package:messages/Shared/filled_outline_button.dart';
import 'package:messages/models/Chat.dart';

import 'chat_card.dart';

class Bodys extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.fromLTRB(
                kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
            color: kPrimaryColor,
            child: Row(
              children: [
                FillOutlineButton(
                  press: () {},
                  text: 'Recent Message',
                  isFilled: true,
                ),
                SizedBox(
                  width: kDefaultPadding,
                ),
                FillOutlineButton(
                  press: () {},
                  text: 'Active',
                  isFilled: false,
                )
              ],
            )),
        Expanded(
            child: ListView.builder(
                itemCount: chatsData.length,
                itemBuilder: (context, index) => ChatCard(
                      chat: chatsData[index],
                      press: () {
                        Get.toNamed('/messages');
                      }, //open detail messager
                    )))
      ],
    );
  }
}
