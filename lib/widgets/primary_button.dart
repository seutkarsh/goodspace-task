import 'package:flutter/material.dart';
import 'package:goodspace/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const PrimaryButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.poppins(
              color: AppColors.secondary,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            minimumSize: const Size.fromHeight(56),
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.secondary,
            padding: EdgeInsets.symmetric(vertical: 16.5, horizontal: 0)));
  }
}
