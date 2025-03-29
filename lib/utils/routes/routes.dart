import 'package:flutter/material.dart';
import 'package:mvvm_app/utils/routes/routes_names.dart';
import 'package:mvvm_app/view/login_screen.dart';
import 'package:mvvm_app/view/main_wrapper_screen.dart';
import 'package:mvvm_app/view/profile_screen.dart';
import 'package:mvvm_app/view/signup_screen.dart';
import 'package:mvvm_app/view/splash_screen.dart'; // Import MainWrapper

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RouteNames.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RouteNames.signupScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case RouteNames.home:
        return MaterialPageRoute(
            builder: (_) => const MainWrapper()); // Changed to MainWrapper
      case RouteNames.profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(child: Text("No route configured")),
                ));
    }
  }
}
