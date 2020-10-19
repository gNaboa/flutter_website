import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  final String image;
  final String text;
  final Color color;
  ContactTile(this.image, this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 200,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Image.asset(image), Text(text)],
      ),
    );
  }
}
