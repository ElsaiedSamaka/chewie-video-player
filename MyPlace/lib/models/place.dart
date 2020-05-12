import 'dart:io';

import 'package:flutter/foundation.dart';

class Location {
  final double longtitude;
  final double latitude;
  final String address;
  Location({@required this.longtitude,@required this.latitude,this.address});
}

class Place {
  final int id;
  final String title;
  final Location location;
  final File img;
  Place({@required this.id,@required this.title,@required this.location,@required this.img});
}
