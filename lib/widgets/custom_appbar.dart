import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_Icon.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final Icon icon;
  const CustomAppBar({super.key, required this.text, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(
          flex: 8,
        ),
        CustomIcon(
          icon: icon,
        ),
        const Spacer(),
      ],
    );
  }
}
