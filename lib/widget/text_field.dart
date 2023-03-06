import 'package:flutter/material.dart';

class TextFiledWidget extends StatelessWidget {
  String hint;
  double fontSize;
  TextFiledWidget({
    required this.hint,
    this.fontSize = 16,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: fontSize)),
    );
  }
}
