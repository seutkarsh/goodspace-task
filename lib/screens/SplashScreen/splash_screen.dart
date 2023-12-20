import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:goodspace/screens/SplashScreen/splash_screen_animation_controller.dart';
import 'package:goodspace/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashScreenAnimationController animationController =
      Get.put(SplashScreenAnimationController());

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 1500), () {
      animationController.initiateAnimation(0.15, 1);
    });

    Future.delayed(const Duration(milliseconds: 2500), () {
      Get.offAndToNamed("/signup");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SizedBox(
        width: Get.width,
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedSize(
                  curve: Curves.ease,
                  duration: const Duration(milliseconds: 1000),
                  child: Image.asset("assets/images/logo.gif",
                      height:
                          Get.height * animationController.logoHeight.value)),
              const SizedBox(
                height: 20,
              ),
              AnimatedOpacity(
                opacity: animationController.nameOpacity.value,
                duration: const Duration(milliseconds: 1000),
                child: SvgPicture.asset(
                  'assets/vectors/name.svg',
                  height: Get.height * 0.05,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
