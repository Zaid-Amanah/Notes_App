import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/views/edit_notes_view.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/widgets/constants.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const Notesapp());
}

//video 12 done
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
