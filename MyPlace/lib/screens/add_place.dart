import 'dart:io';

import 'package:MyPlace/widgets/image_input.dart';
import 'package:flutter/material.dart';

class AddPlacesScreen extends StatefulWidget {
  static const id = "/addplacesscreens";
  AddPlacesScreen({Key key}) : super(key: key);

  @override
  _AddPlacesScreenState createState() => _AddPlacesScreenState();
}

class _AddPlacesScreenState extends State<AddPlacesScreen> {
  final _textController = TextEditingController();
  File _pickedImg;
  void _selecteImg(File pickedImg) {
    _pickedImg = pickedImg;
  }

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
          Expanded(
              child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: _textController,
              ),
              SizedBox(height: 10),
              ImageInput(_selecteImg),
            ],
          )),
          RaisedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('Submit'),
            color: Theme.of(context).accentColor,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ],
      ),
    );
  }
}
