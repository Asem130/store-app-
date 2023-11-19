import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/productes_model.dart';
import 'package:store_app/widgets/custom_bottom.dart';
import 'package:store_app/widgets/custom_textfeild.dart';

import '../service/update_product.dart';

class UpdateProductsPage extends StatefulWidget {
  UpdateProductsPage({super.key});
  static String id = 'update Products';

  @override
  State<UpdateProductsPage> createState() => _UpdateProductsPageState();
}

class _UpdateProductsPageState extends State<UpdateProductsPage> {
  @override
  String? title;

  String? price;

  String? des;

  String? image;

  bool isLoadin = false;

  Widget build(BuildContext context) {
    ProductesModel product =
        ModalRoute.of(context)!.settings.arguments as ProductesModel;
    return ModalProgressHUD(
      inAsyncCall: isLoadin,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'update',
            style: TextStyle(color: Color(0xFF060303)),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                ),
                CustomTextFeild(
                  hintText: 'new title',
                  onChanged: (data) {
                    title = data;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextFeild(
                  hintText: 'new price',
                  onChanged: (data) {},
                  type: TextInputType.number,
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextFeild(
                  hintText: 'new description',
                  onChanged: (data) {
                    des = data;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextFeild(
                  hintText: 'new image',
                  onChanged: (data) {
                    image = data;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextBotton(
                  text: 'update',
                  onTap: () {
                    isLoadin = true;
                    setState(() {});
                    try {
                      updateProduct(product);
                    } catch (e) {

                     print(e.toString());
                    }

                    isLoadin = false;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void updateProduct(ProductesModel product) {
    UpdateProdut().updateProduct(
        title: title!,
        price: price!,
        desc: des!,
        image: image!,
        Category: product.category);
  }
}
