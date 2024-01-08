import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';
import 'package:notes_app/widgets/custem_Text_Field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        custemTextField(
          hintText: "Title",
        ),
        custemTextField(
          hintText: "Comment",
          maxLines: 7,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => print("object"),
          child: Container(
            height: 45,
            width: 350,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Center(
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
/*

// Padding(
        //   padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
        //   child: TextField(
        //     decoration: InputDecoration(
        //       enabledBorder: OutlineInputBorder(
        //           borderSide: BorderSide(color: Colors.white)),
        //       border: OutlineInputBorder(
        //           borderSide: BorderSide(color: Colors.white)),
        //       hintText: "Title",
        //       //border: InputBorder.none,
        //       hintStyle: TextStyle(
        //         color: Color(0xff54EBD7),
        //       ),
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        //   child: TextField(
        //     decoration: InputDecoration(
        //       enabledBorder: OutlineInputBorder(
        //           borderSide: BorderSide(color: Colors.white)),
        //       border: OutlineInputBorder(
        //           borderSide: BorderSide(color: Colors.white)),
        //       hintText: "Comment",
        //       hintStyle: TextStyle(
        //         color: Color(0xff54EBD7),
        //       ),
        //     ),
        //   ),
        // ),


*/
