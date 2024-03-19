import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custm_appBar.dart';
import 'package:note_app/views/widget/custom_note_item.dart';
import 'package:note_app/views/widget/notes_list.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(title: 'Notes',  icon:Icons.search),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}


