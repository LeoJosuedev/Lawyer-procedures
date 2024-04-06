import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tramites_app/src/features/authentication/controllers/onboarding/controller_onboarding.dart';
import 'package:tramites_app/src/utillities/constants/colors.dart';
import 'package:tramites_app/src/utillities/constants/sizes.dart';
import 'package:tramites_app/src/utillities/device/device_utility.dart';
import 'package:tramites_app/src/utillities/helpers/helper_function.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(activeDotColor: dark ? TColors.light:
         TColors.dark, dotHeight: 6),
      ),
    );
  }
}
