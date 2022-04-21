import 'package:flutter/material.dart';
import 'package:servini_app/home/search_page.dart';
import '../colors.dart';
import 'bubble_button.dart';


Widget welcome(BuildContext context){
  final size = MediaQuery.of(context).size;
  return Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          darkOrange,
          lightRed,
        ],
      ),
    ),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, size.height * 0.28 , 0, 0),
          child: Column(
            children: [
              Image.asset(
                "assets/logo_slogan.png",
                width: 200,
              ),
              SizedBox(height: size.height * 0.32),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchPage()),
                  );
                },
                child: bubbleButton(context),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
