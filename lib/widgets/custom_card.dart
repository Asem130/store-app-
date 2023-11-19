import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:store_app/screens/update_product.dart';

import '../models/productes_model.dart';

class CustomCard extends StatelessWidget {
  @override
  CustomCard({required this. product});
   ProductesModel product;
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap:  (){
        Navigator.pushNamed(context, UpdateProductsPage.id,arguments: product);
      },
      child: Stack(
        
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  spreadRadius: 20,
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 50,
                  offset: Offset(10, 10))
            ]),
          
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: TextStyle(color: Colors.grey,),
                     
                    maxLines: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text( r'$''${product.price}', style: TextStyle()),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: Image.network(
             product.image,
              height: 120,
              width: 120,
            ),
            left: 50,
            top: -65,
          ),
        ],
      ),
    );
  }
}
