import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/listmodel.dart';

class ListProvider extends ChangeNotifier {
  final Dio dio = Dio();
  List<Images>? k;
  var url = "https://fruityvice.com/api/fruit/all";
  fetchpage() async {
    try {
      final response = await dio.get(url);
      k = imagesFromJson(response.data);
      print(jsonDecode(response.data));
      notifyListeners();
    } catch (e) {
      print('$e//////12///////////12/////////');
      throw Exception('Failed to fetch list: $e');
    }
  }
}
