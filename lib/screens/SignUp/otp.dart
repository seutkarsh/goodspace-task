import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodspace/utils/colors.dart';
import 'package:goodspace/utils/input_decoration.dart';
import 'package:goodspace/utils/theme.dart';
import 'package:goodspace/widgets/primary_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:pinput/pinput.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            actions: [
              TextButton(
                onPressed: () {
                  Get.defaultDialog(
                      backgroundColor: Colors.white,
                      radius: 12,
                      title: "Enter Correct Phone Number",
                      titlePadding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 26),
                      titleStyle: GoogleFonts.poppins(
                          color: AppColors.black73,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.2),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                      content: Column(
                        children: [
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
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: Text(
                                "Please be sure to select the correct area code and enter 10 digits.",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    color: AppColors.gsGrey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400)),
                          ),
                          SizedBox(
                            height: 42,
                          ),
                        ],
                      ),
                      confirm: PrimaryButton(
                        text: "Verify Phone",
                        onPressed: () {
                          print("Verify Phone");
                          // Get.toNamed("/otp");
                        },
                      ));
                },
                child: Row(
                  children: [
                    Text(
                      "Edit Phone Number",
                      style: GoogleFonts.poppins(
                          color: AppColors.appBarButton,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          height: 1.2),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Icon(
                      Icons.create_outlined,
                      color: AppColors.appBarButton,
                      size: 15,
                    )
                  ],
                ),
              )
            ],
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(top: 70, bottom: 32, left: 32, right: 32),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                              text: "OTP sent to +91 ",
                              style: GoogleFonts.poppins(
                                  color: AppColors.black73,
                                  fontSize: 18,
                                  height: 1.2,
                                  fontWeight: FontWeight.w500),
                              children: [
                                TextSpan(
                                    text: "98117 35375",
                                    style: GoogleFonts.poppins(
                                        color: AppColors.primary,
                                        fontSize: 18,
                                        height: 1.2,
                                        fontWeight: FontWeight.w500))
                              ])),
                      Text("Enter OTP to confirm your phone",
                          style: GoogleFonts.poppins(
                              color: AppColors.black73,
                              fontSize: 18,
                              height: 1.2,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 16,
                      ),
                      Text("You’ll receive a four digit verification code.",
                          style: GoogleFonts.poppins(
                              color: AppColors.gsGrey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      SizedBox(
                        height: 24,
                      ),
                      Pinput(
                        closeKeyboardWhenCompleted: true,
                        separatorBuilder: (index) {
                          return SizedBox(
                            width: 24,
                          );
                        },
                        defaultPinTheme: AppTheme.otpDefaultTheme,
                        focusedPinTheme: AppTheme.otpDefaultTheme.copyWith(
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.primary),
                          ),
                        ),
                        errorPinTheme: AppTheme.otpDefaultTheme.copyWith(
                          decoration: BoxDecoration(
                            color: AppColors.lightRed,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.lightRed),
                          ),
                        ),
                        submittedPinTheme: AppTheme.otpDefaultTheme.copyWith(
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.primary),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                              text: "Didn't receive OTP? ",
                              style: GoogleFonts.poppins(
                                  color: AppColors.gsGrey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(
                                    text: "Resend",
                                    style: GoogleFonts.poppins(
                                        color: AppColors.primary,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600))
                              ])),
                    ],
                  ),
                ),
                PrimaryButton(
                  text: "Verify Phone",
                  onPressed: () {
                    // print("OTP");
                    // Get.toNamed("/otp");
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
