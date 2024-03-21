import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/Custom_Text_Field.dart';
import 'package:notes_app/widgets/custom_Button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitel;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSave: (p0) {
              title = p0;
            },
            hintText: "Title",
          ),
          CustomTextField(
            onSave: (p0) {
              subtitel = p0;
            },
            hintText: "Content",
            maxLines: 7,
          ),
          const Spacer(),
          BlocBuilder<NotesCubit, NotesState>(
            builder: (context, state) {
              return Custom_Button(
                isLoding: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                        title: title!,
                        subtitle: subtitel!,
                        date: DateTime.now().toString(),
                        color: 0);
                    BlocProvider.of<NotesCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
