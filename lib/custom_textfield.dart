import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
  });

  final String labelText;
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText, 
          hintText: hintText,   
          border: OutlineInputBorder(), 
        ),
      ),
    );
  }
}