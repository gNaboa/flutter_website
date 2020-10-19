import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newweb_flutter/models/feedback.dart';

class FeedbackTile extends StatelessWidget {
  final FeedBack _feedBack;
  FeedbackTile(this._feedBack);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(color: Colors.transparent),
              ),
              Expanded(
                flex: 3,
                child: Container(
                    alignment: Alignment.center,
                    color: _feedBack.color,
                    child: Padding(
                      padding: EdgeInsets.all(42),
                      child: Column(
                        children: [
                          Text(_feedBack.review),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            _feedBack.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(_feedBack.userPic))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
