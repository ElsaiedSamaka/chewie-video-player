import 'package:MyPlace/provider/great_places_provider.dart';
import 'package:MyPlace/screens/add_place.dart';
import 'package:MyPlace/screens/places_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Places(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amberAccent,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: PlaceListScreen(),
        routes: {
          AddPlacesScreen.id: (context) => AddPlacesScreen(),
        },
      ),
    );
  }
}
