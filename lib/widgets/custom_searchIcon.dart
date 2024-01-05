import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.07),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: GestureDetector(
          onTap: () => print("object"),
          child: const Icon(
            Icons.search,
            size: 30,
          ),
        ),
      ),
    );
  }
}
