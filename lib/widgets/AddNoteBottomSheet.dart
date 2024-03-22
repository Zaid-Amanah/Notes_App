// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/widgets/add-note-form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            debugPrint("Success");
            Navigator.pop(context);
          } else if (state is AddNoteFailure) {
            debugPrint("AddNoteFailure ${state.errMessage}");
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: State is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 8,
                right: 8,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const AddNoteForm(),
            ),
          );
        },
      ),
    );
  }
}
