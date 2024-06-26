import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tramites_app/src/features/authentication/controllers/onboarding/controller_onboarding.dart';
import 'package:tramites_app/src/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:tramites_app/src/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:tramites_app/src/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:tramites_app/src/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:tramites_app/src/utillities/constants/image_strings.dart';
import 'package:tramites_app/src/utillities/constants/text_strings.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subtitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subtitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subtitle: TTexts.onBoardingSubTitle3)
            ],
          ),
          // Skip Button
          const OnBoardingSkip(),
          // Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),
          // Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}



