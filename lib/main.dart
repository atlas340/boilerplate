import 'package:flutter/material.dart';
import 'package:mvvm_app/utils/routes/routes.dart';
import 'package:mvvm_app/utils/routes/routes_names.dart';
import 'package:mvvm_app/view/main_wrapper_screen.dart';
import 'package:mvvm_app/viewModel/auth_viewmodel.dart';
import 'package:mvvm_app/viewModel/home_view_model.dart';
import 'package:mvvm_app/viewModel/user_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(create: (_) => UserViewModel()),
        ChangeNotifierProvider(create: (_) => HomeViewModel())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: RouteNames.splashScreen,
        onGenerateRoute: Routes.generateRoutes,
        // Add this home route for logged-in state
        home: const MainWrapper(),
      ),
    );
  }
}
