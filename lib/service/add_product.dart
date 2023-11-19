import 'package:store_app/helper/api.dart';
import 'package:store_app/models/productes_model.dart';

class AppProduct {
  Future<ProductesModel> addProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String Category}) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': Category,
    });
    return ProductesModel.fromJson(data);
  }
}
