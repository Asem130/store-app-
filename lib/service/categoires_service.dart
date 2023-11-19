import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';

import 'package:store_app/models/productes_model.dart';

class CategorySevice {
  Future<List<ProductesModel>> getCategoriesServices(categoryName) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductesModel> productesList = [];
    for (int i = 0; i < data.length; i++) {
      productesList.add(ProductesModel.fromJson(data[i]));
    }
    return productesList;
  }
}
