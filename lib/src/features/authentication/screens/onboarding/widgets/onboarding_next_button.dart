import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:tramites_app/src/features/authentication/controllers/onboarding/controller_onboarding.dart';
import 'package:tramites_app/src/utillities/constants/sizes.dart';
import 'package:tramites_app/src/utillities/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
    
      ),
    );
  }
}