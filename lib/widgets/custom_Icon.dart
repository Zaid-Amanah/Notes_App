// ignore: file_names
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final Icon icon;
  const CustomIcon({super.key, required this.icon});
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
        child: GestureDetector(onTap: () => print("object"), child: icon),
      ),
    );
  }
}
