import 'package:firebase_auth/firebase_auth.dart';
import 'package:stressout/pages/home/home.dart';
import 'package:stressout/pages/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          print(snapshot);
          if (snapshot.hasData) {
            return Home();
          } else {
            return const Onboarding();
          }
        },
      ),
    );
  }
}
