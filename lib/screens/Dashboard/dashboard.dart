import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goodspace/utils/colors.dart';
import 'package:goodspace/utils/input_decoration.dart';
import 'package:goodspace/widgets/dashboard_top_row.dart';
import 'package:goodspace/widgets/job_tile.dart';
import 'package:goodspace/widgets/trainer_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<BottomNavigationBarItem> navigationList = const [
    BottomNavigationBarItem(
        icon: Icon(Icons.business_center_outlined), label: "Work"),
    BottomNavigationBarItem(
        icon: Icon(Icons.handshake_outlined), label: "Recruit"),
    BottomNavigationBarItem(
        icon: Icon(Icons.people_alt_outlined), label: "Socia"),
    BottomNavigationBarItem(
        icon: Icon(Icons.message_outlined), label: "Message"),
    BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              DashboardTopRow(),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/vectors/premiumIcon.svg",
                    color: AppColors.premiumGolden,
                    height: 20,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Step into the future",
                    style: GoogleFonts.poppins(
                        color: AppColors.black73,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => TrainerTile(),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 9),
                child: Text(
                  "Jobs for you",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: AppColors.primary,
                      fontSize: 14,
                      height: 1.2,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Divider(
                color: AppColors.primary,
                thickness: 1,
                height: 1,
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.gsGrey,
                ),
                cursorColor: AppColors.primary,
                decoration: AppInputDecoration.searchBar,
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => JobTile(),
                    separatorBuilder: (context, index) => SizedBox(height: 16),
                    itemCount: 5),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: navigationList),
      ),
    ));
  }
}
