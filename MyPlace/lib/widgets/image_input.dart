import 'dart:io';

import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File _storedImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black38),
          ),
          child: _storedImage != null
              ? Text(
                  'No images yet',
                  textAlign: TextAlign.center,
                )
              : Image.file(_storedImage,fit: BoxFit.fill,),
        ),
        SizedBox(width: 10),
        FlatButton.icon(
          onPressed: () {
            //add open camera func
          },
          icon: Icon(Icons.camera),
          label: Text('Take a photo'),
          textColor: Colors.black,
        ),
      ],
    );
  }
}
