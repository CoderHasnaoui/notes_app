import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custom_buttom.dart';
import 'custom_text_field.dart';

class AddButtomSheet extends StatelessWidget {
  const AddButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => AddNoteFormState();
}

class AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle; 
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child:  Column(
        children: [
         const  SizedBox(
            height: 36,
          ),
          CustomTextField(
            onSave: (value)=>title= value,
            hint: 'titlle',
          ),
        const   SizedBox(
            height: 16,
          ),
           CustomTextField(
            onSave: (value)=>subTitle= value,
            hint: 'content',
            maxLine: 5,
          ),
         const  SizedBox(
            height: 16,
          ),
           CustomButton( onTap:(){
          if(formKey.currentState!.validate()){
            formKey.currentState!.save() ; 
          }else{
            autovalidateMode= AutovalidateMode.always ; 
          }
        } ),
       const    SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
