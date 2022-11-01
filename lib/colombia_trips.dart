import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class ColombiaTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ColombiaTripsState();
  }

}
/*class ColombiaTrips extends StatefulWidget {
  const ColombiaTrips({Key? key}) : super(key: key);

  @override
  State<ColombiaTrips> createState() => _ColombiaTripsState();
}*/

class _ColombiaTripsState extends State<ColombiaTrips>  {
  int indexTap = 0;
  final List<Widget> widgetsChildren =[
    HomeTrips(),
    SearchTrips(),
    ProfileTrips(),
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;

    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return  Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,

            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                  icon:Icon(Icons.home),label: "fer",

              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label:("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: ("")
              ),

            ]
        ),
      ),
    );
  }

}