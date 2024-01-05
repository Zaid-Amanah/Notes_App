import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_searchIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "   Notes App",
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(
          flex: 8,
        ),
        CustomSearchIcon(),
        Spacer(),
      ],
    );
  }
}
