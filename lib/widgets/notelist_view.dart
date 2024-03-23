import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_noteitem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final List<Color> colorArray = const [
    Color(0xffFFCD7B),
    Color(0xff77D6EF),
    Color(0xffD89CE2),
    Color(0xff34BDB0),
    Color(0xffFFCD7B),
    Color(0xff77D6EF),
    Color(0xffD89CE2),
    Color(0xff34BDB0),
    Color(0xffFFCD7B),
    Color(0xff77D6EF),
    Color(0xffD89CE2),
    Color(0xff34BDB0),
    Color(0xffFFCD7B),
    Color(0xff77D6EF),
    Color(0xffD89CE2),
    Color(0xff34BDB0),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        //print("zaid: ${notes.first.color}");
        return ListView.builder(
          itemCount: notes.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "EditNotesView");
              },
              child: NotesItem(
                notes: notes[index],
                //color: colorArray[notes.elementAt(index).color],
                color: colorArray[index],
              ),
            ),
          ),
        );
      },
    );
  }
}

/*

*/