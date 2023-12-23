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

  static BottomNavigationBarThemeData bottomNavigationBarThemeData =
      BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedLabelStyle:
              GoogleFonts.poppins(color: AppColors.primary, fontSize: 12),
          unselectedLabelStyle:
              GoogleFonts.poppins(color: AppColors.gsGrey, fontSize: 12),
          unselectedIconTheme: IconThemeData(color: AppColors.gsGrey, size: 20),
          selectedIconTheme: IconThemeData(color: AppColors.primary, size: 20));
}
