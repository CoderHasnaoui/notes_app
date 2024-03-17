import 'package:flutter/material.dart';
import 'package:note_app/views/widget/notes_view_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()=>null , child: Icon(Icons.add),),
      body: const  NotesViewBody(),
    );
  }
}