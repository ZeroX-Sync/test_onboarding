import 'package:flutter/material.dart';
import '../widgets/onboarding_widget.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingWidget(),
    );
  }
}
