import 'package:flutter/material.dart';

class CustomTextBotton extends StatelessWidget {
  CustomTextBotton({ required this.text, this.onTap});
  VoidCallback? onTap;
  String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
          color: Color.fromARGB(255, 163, 128, 90),
          borderRadius: BorderRadius.circular(16)
             
        
            ),
            child: Center(
          child: Text(text,style: TextStyle(fontSize: 18,color: Colors.white),),
            ),
          ),
    );
  }
}