import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:messages/Presentation/messages/components/body.dart';
import 'package:messages/Shared/constants.dart';

class MessagesScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/user3.jpeg'),
          ),
          SizedBox(width: kDefaultPadding*0.75,),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kiston Marte',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Active 16m ago',
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.local_phone)),
        IconButton(onPressed: (){}, icon: Icon(Icons.videocam)),
        SizedBox(width: kDefaultPadding/2,)
      ],
    );
  }
}
