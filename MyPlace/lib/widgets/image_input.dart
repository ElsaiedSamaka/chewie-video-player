import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as syspath;
import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  Function onSelectImage;
  ImageInput(this.onSelectImage);
  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File _storedImage;

  Future _takePicture() async {
    final imageFile = await ImagePicker.pickImage(
      source: ImageSource.camera,
      maxWidth: 720,
    );
    setState(() {
      _storedImage = imageFile;
    });
    /*
     To store an image file on local machine Storage it's that easy of just
     getting the the app Directory and getting the imgfile name 
     Copying the image with {appDir/imgName}
     we used for this func 2 packages only
     1 for the appDirectory
     2 for the fileName
     */
    final appDir = await syspath.getApplicationDocumentsDirectory();
    final imgfileName = path.basename(imageFile.path);
    final savedImg = await imageFile.copy('${appDir.path}/$imgfileName');
  }

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
              ? Image.file(
                  _storedImage,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
              : Text(
                  'No images yet',
                  textAlign: TextAlign.center,
                ),
          alignment: Alignment.center,
        ),
        SizedBox(
          width: 10,
        ),
        FlatButton.icon(
          onPressed: _takePicture,
          icon: Icon(Icons.camera),
          label: Text('Take a photo'),
          textColor: Colors.black,
        ),
      ],
    );
  }
}
