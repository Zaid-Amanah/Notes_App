import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_notes_view.dart';
import 'package:notes_app/views/notes_view.dart';

void main() {
  runApp(const Notesapp());
}

class Notesapp extends StatelessWidget {
  const Notesapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        EditNotesView.id: (context) => const EditNotesView(),
      },
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
    );
  }
}
