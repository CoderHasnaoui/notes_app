import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custm_appBar.dart';
import 'package:note_app/views/widget/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
     body:  Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child:  Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(title: 'Edit notes' , icon: Icons.check),
          CustomTextField(hint: 'Title') , 
          SizedBox(height: 16,) , 
          CustomTextField(hint: 'Content ' , maxLine: 5) , 
         
        ],
      ),
    )
    );   
  }
}