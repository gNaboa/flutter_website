import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newweb_flutter/models/recent_work.dart';
import 'package:newweb_flutter/work_tile.dart';

import '../cabecalhotile.dart';

class WorkRecent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: 1000,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/recent_work_bg.png"),
              )),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Cabecalho("My Strong Arenas", "Recent Works", Colors.yellow),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WorkTile(recentWorks[0]),
                      WorkTile(recentWorks[1])
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WorkTile(recentWorks[2]),
                      WorkTile(recentWorks[3])
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
