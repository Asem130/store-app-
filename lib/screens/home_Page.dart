import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/productes_model.dart';
import 'package:store_app/service/all_categories_services.dart';
import 'package:store_app/service/all_productes_sevices.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('New Trend', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.cartPlus,
                  color: Colors.black,
                ))
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 60),
            child: FutureBuilder<List<ProductesModel>>(
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List <ProductesModel> productes = snapshot.data!;
                 return GridView.builder(
                  
                  itemCount: productes.length,
                      clipBehavior: Clip.none,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.5,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 80
                      ),
                      itemBuilder: (context, index) {
                        return CustomCard(product: productes[index],);
                });
                } 
                else {
                return  Center(
                    child: CircularProgressIndicator(
                      color: Colors.brown,
                    ),
                  );
                }
                
              },
              future: GetAllProductesSevices().getProductes(),
            ),));
  }
}
