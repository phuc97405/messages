import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:messages/Shared/constants.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      width: Get.width * 0.8,
      child: Row(
        children: [
          buildDivided(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: Text(
              'OR',
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ),
          buildDivided(),
        ],
      ),
    );
  }

  Expanded buildDivided() {
    return Expanded(
        child: Divider(
      color: kPrimaryColor,
      height: 1.5,
    ));
  }
}
