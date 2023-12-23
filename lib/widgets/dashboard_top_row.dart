import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goodspace/utils/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DashboardTopRow extends StatelessWidget {
  const DashboardTopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircularPercentIndicator(
            progressColor: AppColors.progressGreen,
            radius: 22,
            percent: 0.69,
            center: CircleAvatar(
                radius: 20,
                foregroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9ZX1LM8KEtgISby0DuOAOJkQH7XEHYr-tsg&usqp=CAU")),
          ),
          Row(
            children: [
              SvgPicture.asset(
                "assets/vectors/premiumIcon.svg",
                height: 25,
              ),
              SizedBox(
                width: 17,
              ),
              SvgPicture.asset("assets/vectors/bellIcon.svg", height: 25),
              SizedBox(
                width: 17,
              ),
              SvgPicture.asset("assets/vectors/leftAlign.svg", height: 25),
            ],
          )
        ],
      ),
    );
  }
}
