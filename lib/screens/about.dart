import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newweb_flutter/constants.dart';

class AboutSection extends StatefulWidget {
  @override
  _AboutSectionState createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1100),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "About\nmy story",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset("images/sign.png")
                ],
              ),
              Container(
                width: 230,
                height: 200,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis purus justo, commodo non elit nec, feugiat commodo quam. Mauris posuere nulla ligula, in condimentum mauris ullamcorper et. Proin facilisis erat felis, id rutrum justo interdum id. Pellentesque condimentum diam eros",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Column(
                  children: [
                    Text(
                      "08",
                      style: TextStyle(color: Colors.white, fontSize: 80),
                    ),
                    Text(
                      "Years of experience",
                      style: TextStyle(color: Colors.pink),
                    )
                  ],
                ),
              ),
              Container(
                width: 230,
                height: 200,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis purus justo, commodo non elit nec, feugiat commodo quam. Mauris posuere nulla ligula, in condimentum mauris ullamcorper et. Proin facilisis erat felis, id rutrum justo interdum id. Pellentesque condimentum diam eros",
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                width: 170,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.grey),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset("images/hand.png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Hire Me!",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 170,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.grey),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset("images/download.png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Download CV",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
