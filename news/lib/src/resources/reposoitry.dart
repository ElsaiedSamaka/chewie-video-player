import 'newsAPIprovider.dart';
import 'newsDBprovider.dart';
import 'dart:async';
import '../models/item_model.dart';

class Reposoitry {
  NewsApiProvider apiProvider = new NewsApiProvider();
  NewsDbProvider dbProvider = new NewsDbProvider();

 Future<List<int>> fetchTopStories() {
    return apiProvider.fetchTopid();
  }

 Future<ItemModel> fetchItem(int id) async {
    var item = await dbProvider.fetchItem(id);
    if (item != null) {
      return item;
    }
    item = await apiProvider.fetchItem(id);
    return item;
  }
}
