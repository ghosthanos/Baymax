import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(173, 22, 31, 1),
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          filled: true,
          fillColor: Color.fromRGBO(0, 0, 0, 1).withOpacity(0.3),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color.fromRGBO(173, 22, 31, 1),
          ),
        ),
      ),
    );
  }
}
