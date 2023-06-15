import 'package:flutter/material.dart';
import 'package:stressout/pages/onboarding/onboarding.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const Onboarding(),
    );
  }
}
