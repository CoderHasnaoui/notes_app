import 'package:flutter/material.dart';
import 'package:note_app/views/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLine = 1, this.onSave});
  final String hint;
  final int maxLine;

  final void Function(String?)? onSave;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSave,
      validator: (value) {
        if (value?.isEmpty ?? true ) {
          return 'Field is Required  '; 
        }else{
          return  null ;  
        }
      },
      maxLines: maxLine,
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: KPrimaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(KPrimaryColor)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
