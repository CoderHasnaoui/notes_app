import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(                 
      onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>const EditNoteView())) ,
      child: Container(
        padding: const EdgeInsets.only(bottom: 24 , top: 24, left: 16),
        decoration:  BoxDecoration(color:const  Color(0xffFFCC80) , borderRadius: BorderRadius.circular(16)),
         child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
         ListTile(
          title: const Text('Flutter Tips'  , style: TextStyle(color: Colors.black , fontSize: 26),),
          subtitle:  Padding(
            padding: const EdgeInsets.only(top:16.0 , bottom: 16),
            child: Text('build your career with tharwat samy' , style: TextStyle(color: Colors.black.withOpacity(.5) , fontSize: 20)),
          ),
          trailing: IconButton(
            onPressed:()=> Container(),
            icon: const Icon(Icons.delete , color: Colors.black ,size: 24,)
          ),
        ) ,  Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: Text("May21 , 2022 ,", style: TextStyle(color: Colors.black.withOpacity(.4) , fontSize: 16),),
        )
      ],
         ),
      ),
    );
  }
}
