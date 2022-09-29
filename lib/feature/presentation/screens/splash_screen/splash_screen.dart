import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_project/core/constants/appcolors.dart';
import 'package:ecommerce_project/feature/presentation/routes/routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => context.router.pushAndPopUntil(
        const HomeScreenRoute(),
        predicate: (route) => false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textColorPurple,
      body: Center(
        child: Image.asset('assets/images/splash.png'),
      ),
    );
  }
}
