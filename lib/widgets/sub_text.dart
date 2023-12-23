import 'package:flutter/material.dart';
import 'package:goodspace/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SubText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final double? lineHeight;
  final Color? color;

  const SubText(
      {super.key,
      required this.text,
      this.fontSize,
      this.lineHeight,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          color: color ?? AppColors.subText,
          fontSize: fontSize ?? 14,
          fontWeight: FontWeight.w400,
          height: lineHeight ?? 1,
        ));
  }
}
