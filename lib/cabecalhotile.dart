import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cabecalho extends StatelessWidget {
  final String title, subtile;
  final Color color;

  Cabecalho(this.title, this.subtile, this.color);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 5,
              height: 24,
              color: color,
            ),
            Container(
              width: 5,
              height: 24,
              color: Colors.black,
            ),
            Container(
              width: 5,
              height: 24,
              color: Colors.black,
            )
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            Text(
              subtile,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
            )
          ],
        )
      ],
    );
  }
}
