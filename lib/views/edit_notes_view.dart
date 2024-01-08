import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_Text_Field.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});
  static String id = "EditNotesView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const CustomAppBar(
            text: "Edit Note",
            icon: Icon(Icons.check),
          ),
          CustomTextField(
            hintText: "Title",
          ),
          CustomTextField(
            hintText: "Comment",
            maxLines: 7,
          ),
        ],
      ),
    );
  }
}
