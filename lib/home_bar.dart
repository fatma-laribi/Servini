import 'package:flutter/material.dart';
import 'colors.dart';

Widget homeBar(BuildContext context){
  final size = MediaQuery.of(context).size;
  return Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
        colors: [
          darkOrange,
          lightOrange,
        ],
      ),
      borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Row(
      children: [
        const Expanded(
          flex : 2,
          child: Icon(
            Icons.home,
            color: bubbleWhite,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: size.height * 0.07,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                  BoxShadow(
                  color: bubbleWhite.withOpacity(0.5),
                ),
                BoxShadow(
                color: darkOrange.withOpacity(0.3),
                spreadRadius: -10,
                blurRadius: 4,
              ),
              ],
            ),
            child: const Center(
              child: Text(
                "+",
                style: TextStyle(
                  color: bubbleWhite,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
        const Expanded(
          flex: 2,
          child: Icon(
              Icons.person,
              color: bubbleWhite,
          ),
        )
      ],
    ),
  );
}