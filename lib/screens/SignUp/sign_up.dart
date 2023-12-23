import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:goodspace/utils/colors.dart';
import 'package:goodspace/utils/input_decoration.dart';
import 'package:goodspace/widgets/primary_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 40),
                  child: CarouselSlider(
                      disableGesture: true,
                      items: [
                        'assets/vectors/loginAsset1.svg',
                        'assets/vectors/loginAsset2.svg',
                        'assets/vectors/loginAsset3.svg'
                      ].map((e) {
                        return SvgPicture.asset(
                          e,
                          fit: BoxFit.contain,
                        );
                      }).toList(),
                      options: CarouselOptions(
                          height: Get.height,
                          autoPlay: true,
                          enlargeCenterPage: false,
                          pauseAutoPlayOnManualNavigate: false,
                          viewportFraction: 1)),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Please enter your phone number to sign in ",
                            style: GoogleFonts.poppins(
                                color: AppColors.subText,
                                fontSize: 14,
                                height: 1.2,
                                fontWeight: FontWeight.w400),
                            children: [
                          TextSpan(
                              text: "GoodSpace ",
                              style: TextStyle(color: AppColors.primary)),
                          TextSpan(text: "account."),
                        ])),
                    SizedBox(
                      height: 16,
                    ),
                    IntlPhoneField(
                      invalidNumberMessage: "Enter Correct phone number",
                      keyboardType: TextInputType.phone,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: AppColors.gsDarkBlack,
                      ),
                      cursorColor: AppColors.primary,
                      decoration: AppInputDecoration.phoneField,
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                    RichText(
                        text: TextSpan(
                            text: "You will receive a ",
                            style: GoogleFonts.poppins(
                                color: AppColors.gsGrey,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                            children: [
                          TextSpan(
                              text: "4 digit OTP ",
                              style: TextStyle(color: AppColors.primary)),
                        ])),
                    SizedBox(
                      height: 42,
                    ),
                    PrimaryButton(
                      text: "Get OTP",
                      onPressed: () {
                        print("OTP");
                        Get.toNamed("/otp");
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
