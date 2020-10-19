import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newweb_flutter/constants.dart';

import '../menu.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxHeight: 700, minHeight: 500),
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.cover)),
      child: Container(
        alignment: Alignment.center,
        width: 1200,
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset("images/Logo.png"),
                SizedBox(
                  height: 15,
                ),
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                      height: 500,
                      width: 1000,
                      color: Colors.white.withOpacity(0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hello There !",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Robbie\nRutefford",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 100,
                                height: 1,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Creative design director",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  constraints: BoxConstraints(maxWidth: 500, maxHeight: 780),
                  child: Image.asset("images/person.png"),
                )),
            Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                  alignment: Alignment.center,
                  height: 80,
                  width: 1000,
                  child: Menu(),
                ))
          ],
        ),
      ),
    );
  }
}
