import 'package:flutter/material.dart';

class custmeTextF extends StatelessWidget {
  const custmeTextF({
    super.key,
    this.label,
    this.controller,
    this.icon,
    this.hintText,
  });
  final String? label;
  final TextEditingController? controller;
  final Icon? icon;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: icon,
        labelText: label,
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
