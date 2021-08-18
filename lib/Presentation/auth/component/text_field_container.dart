import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:messages/Shared/constants.dart';

class TextFieldContainer extends GetWidget {
  final Widget child;
  const TextFieldContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
