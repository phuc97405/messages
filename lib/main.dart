import 'package:flutter/material.dart';

import 'Presentation/My_App/my_app.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyAppp());
}

class MyAppp extends StatelessWidget {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          home: MyApp(),);
  }
}