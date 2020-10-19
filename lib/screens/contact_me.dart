import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newweb_flutter/cabecalhotile.dart';
import 'package:newweb_flutter/contact_tile.dart';

class ContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      height: 1000,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg_img_2.png"), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Cabecalho("For project inquiry and information ", "Contact Me",
              Colors.green),
          Container(
            color: Colors.white,
            width: 800,
            height: 800,
            child: Padding(
              padding: EdgeInsets.all(32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContactTile("images/skype.png", "robbie.ford356",
                          Colors.blue[200]),
                      ContactTile("images/whatsapp.png", "robbie.ford356",
                          Colors.green[200]),
                      ContactTile("images/messanger.png", "robbie.ford356",
                          Colors.blueAccent[200])
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: EdgeInsets.all(32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Your Name",
                                hintText: "Enter your name",
                                border: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Email Address",
                                hintText: "Enter your email",
                                border: OutlineInputBorder()),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Project Budget",
                                hintText: "Select your budget",
                                border: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Projec Type",
                                hintText: "Select your Type",
                                border: OutlineInputBorder()),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
