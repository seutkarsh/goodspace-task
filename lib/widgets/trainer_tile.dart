import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goodspace/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TrainerTile extends StatelessWidget {
  const TrainerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 114,
      width: 140,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary, width: 1.5),
          borderRadius: BorderRadius.circular(4)),
      child: Stack(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 7),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 30,
                foregroundImage: AssetImage("assets/images/trainer1.png"),
              ),
            ),
            Text(
              "Kimaya",
              style: GoogleFonts.poppins(
                  color: AppColors.black73,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  height: 1.2),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Career Counsellor",
              style: GoogleFonts.poppins(
                  color: AppColors.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  height: 1.2),
            )
          ],
        ),
        Positioned(
            height: 19,
            width: 19,
            top: 0,
            right: 0,
            child: SvgPicture.asset(
              "assets/vectors/badgeIcon.svg",
              height: 19,
            )),
      ]),
    );
  }
}
