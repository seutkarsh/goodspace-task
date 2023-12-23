import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:goodspace/screens/SignUp/otp.dart';
import 'package:goodspace/screens/SignUp/sign_up.dart';
import 'package:goodspace/screens/SplashScreen/splash_screen.dart';
import 'package:goodspace/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: "/signup",
          page: () => const SignUp(),
        ),
        GetPage(
          name: "/otp",
          page: () => const OTP(),
        )
      ],
      title: 'Goodspace Task',
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(
          //     seedColor: Colors.white, background: Colors.white),
          useMaterial3: true,
          dialogBackgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white),
      home: SplashScreen(),
    );
  }
}
