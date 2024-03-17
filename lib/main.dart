import 'package:flutter/material.dart';
import 'package:note_app/views/notes_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
 brightness: Brightness.dark
      ),
      home: const  NotesViews(
      
      ),
    );
  }

}

