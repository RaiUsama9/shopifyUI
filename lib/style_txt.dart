import 'package:flutter/material.dart';

class TextClass extends StatelessWidget {
  final String? txt;
  final Color? clr;
  final FontWeight? weight;
  final double? fontSize;
  final double? space_letter;

  TextClass(
    this.txt,
    this.clr,
    this.fontSize,
    this.weight,
    this.space_letter,
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      txt!,
      style: TextStyle(
        color: clr,
        fontSize: fontSize!,
        fontWeight: weight,
        letterSpacing: space_letter!,
      ),
    );
  }
}
