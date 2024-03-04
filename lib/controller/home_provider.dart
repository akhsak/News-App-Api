// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:newsapp_api/view/home_screen.dart';

class appBarProvider extends ChangeNotifier {
  String name = 'bbc-news';
  appBar(newsname) {
    name = newsname;
    notifyListeners();
  }

  FilterList? selectedMenu;
  popup(item) {
    selectedMenu = item;
    notifyListeners();
  }
}
