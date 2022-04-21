import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Choice extends StatelessWidget {
  String text;
  bool ticked;
  Choice({Key? key, required this.text, required this.ticked});
  @override
  Widget build(BuildContext context) {
    int textColor;
    int backgroundColor;
    if (ticked) {
      textColor = 0xFFFFFFFF;
      backgroundColor = 0xFF424E5E;
    } else {
      textColor = 0xFF424E5E;
      backgroundColor = 0xFFFFFFFF;
    }
    return Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
        height: 28,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(backgroundColor)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontFamily: "Gilroy",
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: Color(textColor)),
            ),
          ],
        ));
  }
}
