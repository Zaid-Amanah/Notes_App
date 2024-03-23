import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              onSave: (p0) {
                title = p0;
              },
              hintText: "Title",
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 23),
              child: CustomTextField(
                onSave: (p0) {
                  subtitel = p0;
                },
                hintText: "Content",
                maxLines: 7,
              ),
            ),
            BlocBuilder<AddNotesCubit, AddNotesState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Custom_Button(
                    isLoding: state is AddNoteLoading ? true : false,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        var now = DateTime.now();
                        var formatter = DateFormat('yyyy-MM-dd');
                        String formattedDate = formatter.format(now);
                        debugPrint("Dateee : $formattedDate");
                        var noteModel = NoteModel(
                            title: title!,
                            subtitle: subtitel!,
                            date: formattedDate,
                            color: 0);
                        BlocProvider.of<AddNotesCubit>(context)
                            .addNote(noteModel);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
