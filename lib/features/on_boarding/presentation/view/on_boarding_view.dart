import 'package:fruits_hub/features/on_boarding/presentation/view/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String routeName = "onBoardingView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: OnBoardingViewBody()),
    );
  }
}
