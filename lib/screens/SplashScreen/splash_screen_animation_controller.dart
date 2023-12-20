import 'package:get/get.dart';

class SplashScreenAnimationController extends GetxController {
  RxDouble logoHeight = 0.2.obs;
  RxDouble nameOpacity = 0.0.obs;

  initiateAnimation(double heightValue, double opacityValue) {
    logoHeight.value = heightValue;
    nameOpacity.value = opacityValue;
  }
}
