import 'package:flutter/material.dart';
import 'package:note_app/views/constants.dart';

import 'custom_text_field.dart';

class AddButtomSheet extends StatelessWidget {
  const AddButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 36,
            ),
            CustomTextField(hint: 'titlle'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'titlle',
              maxLine: 5,
            ),
              SizedBox(
              height: 16,
            ),
            CustomButton(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
