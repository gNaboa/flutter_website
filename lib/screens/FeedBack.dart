import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newweb_flutter/cabecalhotile.dart';
import 'package:newweb_flutter/feedback_tile.dart';
import 'package:newweb_flutter/models/feedback.dart';

class FeedBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      child: Column(
        children: [
          Cabecalho("Client's testimonials tha inspires me a lot",
              "FeedBack Received", Colors.blue),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FeedbackTile(feeds[0]),
              FeedbackTile(feeds[1]),
              FeedbackTile(feeds[2])
            ],
          ),
          SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }
}
