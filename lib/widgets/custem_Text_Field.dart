// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';

// ignore: must_be_immutable, camel_case_types
class custemTextField extends StatelessWidget {
  custemTextField({super.key, this.maxLines = 1, this.onChange, this.hintText});
  String? hintText;
  int? maxLines;
  Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 25, 16, 10),
      child: TextFormField(
        cursorColor: kPrimaryColor,
        maxLines: maxLines,
        validator: (value) {
          if (value!.isEmpty) {
            return "This field is required";
          }
          return null;
        },
        onChanged: onChange,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 15,
            color: kPrimaryColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(color: kPrimaryColor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
