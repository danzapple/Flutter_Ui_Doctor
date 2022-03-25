import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final ValueChanged<String>? onChanged;
  final BoxBorder? border;
  final Color? color;
  const InputField({
    Key? key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.border,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10),
          border: border),
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: color,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
