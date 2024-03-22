import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/notelist_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(9, 16, 9, 0),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(
            text: "Notes App",
            icon: Icon(Icons.search),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20, top: 15),
              child: NotesListView(),
            ),
          ),
        ],
      ),
    );
  }
}
