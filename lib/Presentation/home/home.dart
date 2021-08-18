import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messages/Presentation/Home/components/body.dart';
import 'package:messages/Shared/constants.dart';

import 'home_controller.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

double width = MediaQueryData.fromWindow(window).size.width;
double height = MediaQueryData.fromWindow(window).size.height;

class HomePage extends GetView<HomeController> {
  Widget build(BuildContext context) {
    return  Obx(()=>Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // leading: Icon(Icons.menu_open),
        title: Text('Message'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Bodys(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {},
        child: Icon(
          Icons.person_add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    ));
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: controller.selectedIndex.value,
      onTap: (value) {
        controller.selectedIndex.value = value;
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chats'),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: 'People'),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
        BottomNavigationBarItem(
            icon: CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage('assets/images/user3.jpeg')),
            label: 'Profile'),
      ],
    );
  }
}
