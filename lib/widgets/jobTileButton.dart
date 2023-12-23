import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:goodspace/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class JobTileButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const JobTileButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.poppins(
              color: AppColors.secondary,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: 1.06),
        ),
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            minimumSize: const Size(133, 36),
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.secondary,
            padding: EdgeInsets.symmetric(vertical: 9, horizontal: 0)));
  }
}
