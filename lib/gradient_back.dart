import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  //const GradientBack({Key? key}) : super(key: key);

  String title = "Popular";


  GradientBack(this.title);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF000000),
            Color(0xFF373636)
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(2.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp

        )
      ),

      child: Text(
        title,
        style: TextStyle(
          color: Colors.white70,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        )
      ),
      alignment: Alignment(-0.9, -0.7),

    );
  }
}
