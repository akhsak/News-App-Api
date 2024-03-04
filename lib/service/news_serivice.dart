

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp_api/model/category_model.dart';
import 'package:newsapp_api/model/headline_model.dart';

class Service {
  Future<NewsChannelsHeadlinesModel> newsChannelHeadlinesApi(
      String channelName) async {
    String url =
        'https://newsapi.org/v2/top-headlines?sources=${channelName}&apiKey=916237eeb28947b8a896ecdf70ceea35';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return NewsChannelsHeadlinesModel.fromJson(body);
    }
    throw Exception('Error');
  }

  Future<CategoriesNewsModel> categoriesNewsApi(String category) async {
    String url =
        'https://newsapi.org/v2/everything?q=${category}&apiKey=916237eeb28947b8a896ecdf70ceea35';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return CategoriesNewsModel.fromJson(body);
    }
    throw Exception('Error');
  }
}
