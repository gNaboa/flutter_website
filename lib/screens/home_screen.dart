import 'package:flutter/material.dart';
import 'package:newweb_flutter/models/recent_work.dart';
import 'package:newweb_flutter/screens/about.dart';
import 'package:newweb_flutter/screens/recent_works.dart';
import 'package:newweb_flutter/screens/topsection.dart';

import 'FeedBack.dart';
import 'ServiceOfferings.dart';
import 'contact_me.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                TopSection(),
                AboutSection(),
                ServicesOffering(),
                WorkRecent(),
                FeedBack(),
                ContactMe(),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 1425),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 700,
                  height: 130,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Image.asset("images/email.png"),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Starting new Project ? ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Text("Get an estimate for a new project")
                        ],
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
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RecentWorks {}
