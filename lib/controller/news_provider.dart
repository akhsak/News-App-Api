// 

import 'package:flutter/material.dart';
import 'package:newsapp_api/model/category_model.dart';
import 'package:newsapp_api/model/headline_model.dart';
import 'package:newsapp_api/service/news_serivice.dart';

class NewsProvider extends ChangeNotifier {
  final Service _Service = Service();

  Future<NewsChannelsHeadlinesModel> NewsChannelHeadlinesApi(
      String channelName) async {
    try {
      return await _Service.newsChannelHeadlinesApi(channelName);
    } catch (e) {
      throw Exception('Error fetching news channel headlines');
    }
  }

  Future<CategoriesNewsModel> CategoriesNewsApi(String category) async {
    try {
      return await _Service.categoriesNewsApi(category);
    } catch (e) {
      throw Exception('Error fetching category news');
    }
  }
}
