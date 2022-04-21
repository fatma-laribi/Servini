import 'package:flutter/material.dart';
import '../colors.dart';

Widget userContainer(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.fromLTRB(size.width * 0.035, size.height * 0.015,
        size.width * 0.035, size.height * 0.015),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(18)),
    ),
    child: Row(
      children: [
        ClipOval(
          child: Image.asset(
            "assets/user.png",
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(size.width * 0.04, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "Firas Ghanmi",
                    style: TextStyle(
                        color: writingBlue,
                        fontSize: 13,
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.w900),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Stars(),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: const [
                  Text(
                    "I'm a professional scientist who loves helping",
                    style: TextStyle(
                      color: writingBlue,
                      fontSize: 10,
                      fontFamily: "Gilroy",
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    "others.",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: "Gilroy",
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: LabelCategory(),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget Stars() {
  return Row(
    children: const [
      Icon(
        Icons.star,
        size: 15,
      ),
      Icon(
        Icons.star,
        size: 15,
      ),
      Icon(
        Icons.star,
        size: 15,
      ),
      Icon(
        Icons.star,
        size: 15,
      ),
      Icon(
        Icons.star,
        size: 15,
      ),
    ],
  );
}

Widget LabelCategory() {
  return Container(
    width: 69,
    height: 20,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
        colors: [
          darkYellow,
          lightYellow,
        ],
      ),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24)),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "Catgory",
          style: TextStyle(
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w500,
            fontSize: 10,
          ),
        ),
      ],
    ),
  );
}
