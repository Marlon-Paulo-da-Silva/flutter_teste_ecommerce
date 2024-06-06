import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marlon_store/features/authentication/controllers.oboarding/onboarding.controller.dart';
import 'package:marlon_store/features/authentication/screens/widgets/onboarding.dot.dart';
import 'package:marlon_store/features/authentication/screens/widgets/onboarding.next.dart';
import 'package:marlon_store/features/authentication/screens/widgets/onboarding.page.dart';
import 'package:marlon_store/features/authentication/screens/widgets/onboarding.skip.dart';
import 'package:marlon_store/utils/constants/colors.dart';
import 'package:marlon_store/utils/constants/image_strings.dart';
import 'package:marlon_store/utils/constants/sizes.dart';
import 'package:marlon_store/utils/constants/text_strings.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(image: TImages.onBoardingImage1, title: TTexts.onBoardingTitle1, subTitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(image: TImages.onBoardingImage2, title: TTexts.onBoardingTitle2, subTitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(image: TImages.onBoardingImage3, title: TTexts.onBoardingTitle3, subTitle: TTexts.onBoardingSubTitle3),
            ],
          ),
          //SKIP Button
          const OnBoardingSkip(),

          // Dot Navigation
          const OnBoardingDotNavigation(),

          // Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
