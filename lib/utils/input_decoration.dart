import 'package:flutter/material.dart';
import 'package:goodspace/utils/colors.dart';

class AppInputDecoration {
  static InputDecoration phoneField = InputDecoration(
    hintText: "Phone Number",
    counter: Offstage(),
    // unfocused
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Color.fromRGBO(196, 196, 196, 0.48),
      ),
    ),

    //focused
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: AppColors.primary,
      ),
    ),

    //error
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: AppColors.lightRed,
      ),
    ),
  );
}
