import 'package:flutter/material.dart';



class CustomTextFeild extends StatelessWidget {
  Function(String)? onChanged;
  bool  ? obs = false;
  TextInputType ?type;
  String? hintText;
  CustomTextFeild({this.type,this.obs= true,this.onChanged,this.hintText});
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obs!,
    
    keyboardType: type,
      onChanged: onChanged,
      
      decoration: InputDecoration(
       
       
          hintText: hintText,
          hintStyle: TextStyle(
           
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              
              
            ),
            borderRadius: BorderRadius.circular(16)
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
            
            ),
          )),
    );
  }
}
