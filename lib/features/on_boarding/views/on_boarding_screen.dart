// On boarding screen
// Image
// Title
// Subtitle
// Skip
// Swipe Indicator

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo_app/core/common/widgets/fading_text.dart';
import 'package:todo_app/core/common/widgets/white_space.dart';
import 'package:todo_app/core/resources/colours.dart';
import 'package:todo_app/features/on_boarding/views/widgets/first_page.dart';
import 'package:todo_app/features/on_boarding/views/widgets/second_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              // physics: const PageScrollPhysics(),
              controller: pageController,
              children: const [FirstPage(), SecondPage()],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20)
                  .copyWith(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOutExpo,
                      );
                    },
                    behavior: HitTestBehavior.opaque,
                    child: const Row(
                      children: [
                        Icon(
                          Ionicons.chevron_forward_circle,
                          size: 30,
                          color: AppColors.light,
                        ),
                        WhiteSpace(
                          width: 5,
                        ),
                        FadingText(
                          'Skip',
                        )
                      ],
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: 2,
                    effect: WormEffect(
                      dotHeight: 12,
                      spacing: 10,
                      dotColor: AppColors.yellow.withOpacity(.5),
                      activeDotColor: AppColors.light,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
