import 'package:fruits_hub/features/auth/presentation/views/signin_view.dart';
import 'package:fruits_hub/features/auth/presentation/views/signup_view.dart';
import 'package:fruits_hub/features/home/presentation/views/home_view.dart';
import 'package:fruits_hub/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());

    case SigninView.routeName:
      return MaterialPageRoute(builder: (_) => const SigninView());

    case SignupView.routeName:
      return MaterialPageRoute(builder: (_) => const SignupView());

      
      case HomeView.routeName:
      return MaterialPageRoute(builder: (_) => const HomeView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(),
      );
  }
}
