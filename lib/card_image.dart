import 'package:flutter/material.dart';
import 'floating_action_button_Red.dart';

class CardImage extends StatelessWidget {
  //const CardImage({Key? key}) : super(key: key);


  String pathImage = "assets/img/cartagena_,mar.jpg";

  CardImage(this.pathImage);


  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: 350.0,
      width: 250,
      margin: const EdgeInsets.only(
        top: 80.0,
        left: 20.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black87,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          )
        ]
      ),
    );
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children:<Widget> [
        card,
        FloatingActionButtonRed()


      ],
    );
  }
}
