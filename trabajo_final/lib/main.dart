import 'package:flutter/material.dart';
import 'package:trabajo_final/pages/onboarding/onboarding_page.dart';

import 'pages/login/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: const OnBoardingPage(),
    );
  }
}
