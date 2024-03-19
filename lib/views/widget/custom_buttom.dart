import 'package:flutter/material.dart';
import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: KPrimaryColor, borderRadius: BorderRadius.circular(8)),
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: const Center(
          child: Text(
        "Add",
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}
