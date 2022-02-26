import 'package:flutter/material.dart';
import 'layout/home_layout.dart';
import 'modules/login/Login_screen.dart';
import 'modules/counter/counter_screen.dart';
import 'modules/home/home_screen.dart';
import 'modules/messenger/messenger_screen.dart';
import 'modules/users/users_screen.dart';
import 'modules/bmi/bmi_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}
