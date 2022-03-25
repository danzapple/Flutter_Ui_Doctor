import 'package:flutter/material.dart';

class InputPasswordField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  const InputPasswordField({
    Key? key,
    this.onChanged,
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
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 2,
        ),
      ),
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.white70,
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Colors.blue,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.blue,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
