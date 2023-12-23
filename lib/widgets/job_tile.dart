import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:goodspace/utils/colors.dart';
import 'package:goodspace/widgets/jobTileButton.dart';
import 'package:goodspace/widgets/primary_button.dart';
import 'package:google_fonts/google_fonts.dart';

class JobTile extends StatelessWidget {
  const JobTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.gsLightestGrey,
            ),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(245, 245, 245, 0.25),
                  offset: Offset(0, 4),
                  blurRadius: 4)
            ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "IOS Developer",
                  style: GoogleFonts.poppins(
                      color: AppColors.jobTileTitle,
                      fontSize: 18,
                      height: 1.2,
                      fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.share_outlined,
                  color: AppColors.black73,
                  size: 18,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Goodspace",
                  style: GoogleFonts.poppins(
                      color: AppColors.appBarButton,
                      fontSize: 12,
                      height: 1.2,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "2 Days ago",
                  style: GoogleFonts.poppins(
                      color: AppColors.appBarButton,
                      fontSize: 12,
                      height: 1.2,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.home_outlined,
                  size: 12,
                  color: AppColors.appBarButton,
                ),
                Text(
                  "Saket, New Delhi",
                  style: GoogleFonts.poppins(
                      color: AppColors.appBarButton,
                      fontSize: 12,
                      height: 1.2,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    color: AppColors.jobTileBlockBg,
                    border:
                        Border.all(color: AppColors.progressGreen, width: 0.5),
                    borderRadius: BorderRadius.circular(3)),
                child: Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 10,
                      color: AppColors.progressGreen,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "20-25 LPA",
                      style: GoogleFonts.poppins(
                          color: AppColors.progressGreen,
                          fontSize: 11,
                          height: 1.2,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    color: AppColors.jobTileBlockBg2,
                    border: Border.all(color: AppColors.primary, width: 0.5),
                    borderRadius: BorderRadius.circular(3)),
                child: Row(
                  children: [
                    Icon(
                      Icons.star_border_rounded,
                      size: 10,
                      color: AppColors.primary,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "5-7 Years",
                      style: GoogleFonts.poppins(
                          color: AppColors.primary,
                          fontSize: 11,
                          height: 1.2,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    color: AppColors.jobTileBlockBg3,
                    border: Border.all(color: AppColors.tileBlue, width: 0.5),
                    borderRadius: BorderRadius.circular(3)),
                child: Row(
                  children: [
                    Icon(
                      Icons.business_center_outlined,
                      size: 10,
                      color: AppColors.tileBlue,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Remote",
                      style: GoogleFonts.poppins(
                          color: AppColors.tileBlue,
                          fontSize: 11,
                          height: 1.2,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ]),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  foregroundImage: AssetImage("assets/images/jobTile.png"),
                ),
                SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nikita",
                        style: GoogleFonts.poppins(
                            color: AppColors.appBarButton,
                            fontSize: 12,
                            height: 1.2,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Tooliqa Innovations",
                        style: GoogleFonts.poppins(
                            color: AppColors.appBarButton,
                            fontSize: 11,
                            height: 1.2,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                JobTileButton(text: "Apply", onPressed: () {})
              ],
            )
          ],
        ));
  }
}
