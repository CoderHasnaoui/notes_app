import 'package:flutter/material.dart';
import 'package:note_app/views/widget/notes_view_body.dart';

import 'widget/add_note_buttom_sheet.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
            context: context, builder: (context) =>const  AddButtomSheet()),
        child: Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
