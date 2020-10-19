import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<String> lista = ["Home", "About", "Service", "Portifolio", "Contact"];

  int selectedItem = 0;

  menuList(String item, int index) {
    return Stack(
      children: [
        AnimatedPositioned(
          child: Image.asset(
            "images/Hover.png",
            color: Colors.grey,
          ),
          duration: Duration(milliseconds: 200),
          left: 0,
          right: 0,
          bottom: selectedItem == index ? -2 : -32,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedItem = index;
            });
          },
          child: Text(
            item,
            style: TextStyle(
                color: selectedItem == index ? Colors.pink : Colors.black),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        menuList("Home", 0),
        menuList("About", 1),
        menuList("Service", 2),
        menuList("Portifolio", 3),
        menuList("Contact", 4),
      ],
    );
  }
}
