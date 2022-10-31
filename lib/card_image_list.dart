import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/cartagena.jpg"),
          CardImage("assets/img/Castillo_San_Felipe.jpg"),
          CardImage("assets/img/cartagena_,mar.jpg"),
        ],
      ),
    );
  }

}