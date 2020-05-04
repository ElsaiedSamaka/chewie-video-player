import 'package:news/src/resources/newsAPIprovider.dart';
import 'package:test/test.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/testing.dart';

void main() {
  test('fetching top ids of top stories expect a list of ids', ()async {
    final newsApiProvider = new NewsApiProvider();
    newsApiProvider.client = MockClient((request) async {
      return Response(json.encode([1, 2, 3, 4]),200);
    });
    final ids =await newsApiProvider.fetchTopid();
    expect(ids,[1, 2, 3, 4]);
  });
}
