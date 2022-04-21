import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:servini_app/profile/profile_page.dart';
import 'package:servini_app/welcome/welcome_page.dart';

var pressed = false;

void main() {
  runApp(const MaterialApp(
    home: MainPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // return welcome(context);
    return const ProfilePage();
  }
}
