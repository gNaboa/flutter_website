import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newweb_flutter/models/recent_work.dart';

class WorkTile extends StatelessWidget {
  final RecentWork _recentWork;

  WorkTile(this._recentWork);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 200,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(_recentWork.image))),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _recentWork.category,
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(_recentWork.title,
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("View Details", style: TextStyle(color: Colors.black))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
