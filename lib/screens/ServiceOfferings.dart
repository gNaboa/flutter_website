import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newweb_flutter/models/services.dart';
import 'package:newweb_flutter/offerings_tile.dart';

import '../cabecalhotile.dart';

class ServicesOffering extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      child: Column(
        children: [
          Cabecalho("My strong areas", "Service Offering", Colors.red),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OferringTile(services[0]),
              OferringTile(services[1]),
              OferringTile(services[2]),
              OferringTile(services[3])
            ],
          ),
          SizedBox(
            height: 140,
          )
        ],
      ),
    );
  }
}
