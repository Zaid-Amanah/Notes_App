import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:notes_app/models/note_model.dart';

class NotesItem extends StatelessWidget {
  final Color color;
  final NoteModel notes;
  const NotesItem({super.key, required this.color, required this.notes});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(6, 6, 10, 15),
      height: 250,
      width: 370,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                notes.title,
                style: const TextStyle(fontSize: 40, color: Colors.black),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                notes.subtitle,
                style: TextStyle(
                    fontSize: 22, color: Colors.black.withOpacity(0.5)),
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                print("object");
                notes.delete();
              },
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 21,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 16, bottom: 5),
            child: Text(
              notes.date,
              style:
                  TextStyle(fontSize: 21, color: Colors.black.withOpacity(0.6)),
            ),
          )
        ],
      ),
    );
  }
}
