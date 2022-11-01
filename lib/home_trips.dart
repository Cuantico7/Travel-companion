
import 'package:flutter/material.dart';
import 'review_list.dart';
import 'description_place.dart';
import 'header_appbar.dart';
import 'package:el_dorado/review_list.dart';


class HomeTrips extends StatelessWidget {
  //const HomeTrips({Key? key}) : super(key: key);
  String descriptionDummy="Piratas, corsarios y bucaneros; flotas, poderosos navíos y marinas de guerra de todas las latitudes se acercaron a sus playas sin poder creer lo que sus ojos les mostraban, era el lugar que solo en sueños podían divisar y que para envidiosamente evitar que otros disfrutarán, hubo que fortificar.Cartagena de Indias, una perla en el mar Caribe cuya belleza la ha convertido desde hace décadas en punto obligado del turismo en Colombia, sin duda, es el destino más apetecido por los visitantes que no logran escapar a su magia y que motivados por su esplendor regresan para descubrir nuevas emociones y experimentar una sensación única, esa que solo se puede entender al divisar el horizonte azulado que se posa junto a sus murallas.";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:<Widget> [
        ListView(
          children:<Widget> [
            DescriptionPlace("cartagena", 4, descriptionDummy),
            ReviewList()

          ],
        ),
        //GradientBack("Pupular")
        HeaderAppBar()
      ],

    );
  }
}
