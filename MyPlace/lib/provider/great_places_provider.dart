import 'package:MyPlace/models/place.dart';
import 'package:flutter/foundation.dart';

class Places with ChangeNotifier {
  List<Place> _items = [];
  List<Place> get items => [..._items];
}
