import 'package:flutter/material.dart';

class AddPlacesScreen extends StatefulWidget {
  static const id = "/addplacesscreens";
  AddPlacesScreen({Key key}) : super(key: key);

  @override
  _AddPlacesScreenState createState() => _AddPlacesScreenState();
}

class _AddPlacesScreenState extends State<AddPlacesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Places"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('User Inputs fields'),
          RaisedButton.icon(
            onPressed: null,
            icon: Icon(Icons.add),
            label: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
