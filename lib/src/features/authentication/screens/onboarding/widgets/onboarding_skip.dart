import 'package:flutter/material.dart';
import 'package:tramites_app/src/features/authentication/controllers/onboarding/controller_onboarding.dart';
import 'package:tramites_app/src/utillities/constants/sizes.dart';
import 'package:tramites_app/src/utillities/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: const Text('Skip')));
  }
}