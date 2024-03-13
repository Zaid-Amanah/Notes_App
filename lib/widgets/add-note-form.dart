import 'package:flutter/material.dart';
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
  String? titel, subtitel;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSave: (p0) {
              titel = p0;
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
          Custom_Button(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
