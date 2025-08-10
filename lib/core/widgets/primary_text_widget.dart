import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final int maxLines;
  final bool lineThrow;
  final double height;
  final TextDecoration? textDecoration;
  final String? fontFamily;
  const PrimaryText(
    this.text, {
    super.key,
    this.fontSize = 16,
    this.color,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = 'LamaSans',
    this.textAlign = TextAlign.left,
    this.overflow = TextOverflow.visible,
    this.maxLines = 5,
    this.lineThrow = false,
    this.height = 1.5,
    this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        fontFamily: fontFamily,
        overflow: TextOverflow.ellipsis,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: height,
        decoration: lineThrow ? TextDecoration.lineThrough : textDecoration,
        // fontFamily: Get.locale == const Locale('ar')
        //     ? FontConstants.arabicFontFamily
        //     : FontConstants.fontFamily,
      ),
    );
  }
}
