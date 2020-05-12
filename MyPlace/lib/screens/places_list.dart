import 'package:MyPlace/screens/add_place.dart';
import 'package:flutter/material.dart';

class PlaceListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyPlaces"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, AddPlacesScreen.id);
            },
          )
        ],
      ),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
