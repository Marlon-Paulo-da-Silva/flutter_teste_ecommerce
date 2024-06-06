import "package:flutter/material.dart";
import "package:marlon_store/features/authentication/controllers.oboarding/onboarding.controller.dart";
import "package:marlon_store/utils/constants/colors.dart";
import "package:marlon_store/utils/constants/sizes.dart";
import "package:marlon_store/utils/device/device_utility.dart";
import "package:marlon_store/utils/helpers/helper_functions.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";


class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3,
            effect: ExpandingDotsEffect(
                activeDotColor: dark ? TColors.light : TColors.dark,
                dotHeight: 6
            )
        )
    );
  }
}