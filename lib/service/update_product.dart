import '../helper/api.dart';
import '../models/productes_model.dart';

class UpdateProdut
{
 Future<ProductesModel> updateProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String Category}) async {
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': Category,
    });
    return ProductesModel.fromJson(data);
  }

}