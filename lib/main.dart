import 'package:diabetes_predictor/SplashScreen/splash_view.dart';
import 'package:diabetes_predictor/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF1D1E33),
          appBarTheme:
              AppBarTheme(backgroundColor: Color(0xFF1D1E33), elevation: 0)),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
