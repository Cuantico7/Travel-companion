import 'package:flutter/material.dart';

class FloatingActionButtonRed extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonRed();
  }

}

class _FloatingActionButtonRed extends State<FloatingActionButtonRed> {

  void onPressedFav(){

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Agregaste a tus Favoritos"),

        )
    );


  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFFFF0000),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
          Icons.favorite_border
      ),
    );
  }

}