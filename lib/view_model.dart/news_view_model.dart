// ignore_for_file: non_constant_identifier_names


import 'package:newsapp_api/controller/news_provider.dart';
import 'package:newsapp_api/model/category_model.dart';
import 'package:newsapp_api/model/headline_model.dart';

class NewsModel {
  final _res = NewsProvider();
  Future<NewsChannelsHeadlinesModel> NewsChannelHeadlinesApi(
      String channelName) async {
    final response = await _res.NewsChannelHeadlinesApi(channelName);
    return response;
  }

  Future<CategoriesNewsModel> categoriesNewsApi(String categoryName) async {
    final response = await _res.CategoriesNewsApi(categoryName);
    return response;
  }
}
