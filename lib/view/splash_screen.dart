import 'package:flutter/material.dart';
import 'package:mvvm_app/res/constants/color_constants.dart';
import 'package:mvvm_app/res/widgets/styled_text.dart';
import 'package:mvvm_app/viewModel/splash_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SplashService.checkAuthentication(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: const StyledText(
              text: "Splash Screen",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ColorConstants.textBlackColor,
            ),
          )
        ],
      )),
    );
  }
}
