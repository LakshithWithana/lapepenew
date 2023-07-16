import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    required this.fontSize,
    this.color,
    this.fontWeight,
    this.letterSpacing,
    this.textAlignment,
    this.textEllipsis,
    this.fontFamily,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final TextAlign? textAlignment;
  final FontWeight? fontWeight;
  final Color? color;
  final double? letterSpacing;
  final bool? textEllipsis;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlignment,
      style: TextStyle(
        overflow: textEllipsis == true ? TextOverflow.ellipsis : null,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
        fontFamily: fontFamily,
      ),
    );
  }
}
