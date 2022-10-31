import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  /*String pathImage = "assets/img/girl.jpg";
  String name = "Fernando Velez";
  String details = "1 review, 5 photos";
  String comment = "Es una ciudad fantastic";*/

  String pathImage ;
  String name  ;
  String details ;
  String comment ;

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final userComent = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),

      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900,
            color: Colors.deepOrange


        ),
      ),


    );




    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),

      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Colors.deepOrange


        ),
      ),


    );

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        ),
      ),
    );


    final userDetaill = Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComent,

      ],
    );

    final photo = Container (
      margin: const EdgeInsets.only(
          top: 20.0,
          left: 20.0
      ),

      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage),
          )
      ),

    );

    return Row (
      children: <Widget>[
        photo,
        userDetaill,

      ],
    );

  }

}