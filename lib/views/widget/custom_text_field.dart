import 'package:flutter/material.dart';
import 'package:note_app/views/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return   TextField(
      
      cursorColor: KPrimaryColor,
decoration: InputDecoration(
  hintText: 'tittle ',
  hintStyle:const  TextStyle(color: KPrimaryColor),
  border:  buildBorder() ,
  enabledBorder: buildBorder() , 
  focusedBorder:  buildBorder(KPrimaryColor)
),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
  borderRadius: BorderRadius.circular(8) , 
  borderSide:  BorderSide(color:color ?? Colors.white)
);
  }
}