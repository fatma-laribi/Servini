import 'package:flutter/cupertino.dart';

class IconText extends StatelessWidget {
  String text;
  String path;
  IconText({Key? key, required this.path, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(path),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 12, fontFamily: "Gilroy", color: Color(0xFF6D737B)),
          ),
        )
      ],
    );
  }
}
