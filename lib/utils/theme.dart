import 'package:goodspace/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static PinTheme otpDefaultTheme = PinTheme(
    width: 48,
    height: 48,
    textStyle: GoogleFonts.poppins(
      fontSize: 22,
      color: AppColors.secondary,
    ),
    decoration: BoxDecoration(
      color: AppColors.secondary,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: AppColors.primary),
    ),
  );
}
