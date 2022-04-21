// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icon_text.dart';

class Offer extends StatelessWidget {
  String title;
  //, price, dateTime, category;
  Offer({Key? key, required this.title}) : super(key: key);
  /*  required this.dateTime,
      required this.price,
      required this.category
  });*/
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 112,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFC2BFBF).withOpacity(0.2),
                  blurRadius: 20, // soften the shadow
                  offset: Offset(
                    0, // Move to right 10  horizontally
                    10, // Move to bottom 10 Vertically
                  ),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: "Gilroy",
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF424E5E)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: IconText(
                                text: "Week-ends, 9-17h",
                                path: "assets/offer_icons/schedule.png")),
                        Expanded(
                            flex: 1,
                            child: IconText(
                                text: "10DT per hour",
                                path: "assets/offer_icons/pricing.png"))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: IconText(
                                text: "Tutoring",
                                path: "assets/offer_icons/opened_folder.png")),
                        Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset("assets/offer_icons/arrow.png")
                              ],
                            ))
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ]),
    );
  }
}
