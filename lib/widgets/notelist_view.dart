import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_noteitem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) => const NotesItem());
  }
}
