import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../onboarding/onboarding.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late User? _currentUser;

  @override
  void initState() {
    _currentUser = FirebaseAuth.instance.currentUser;
    super.initState();
  }

  void signUserOut() async {
    await FirebaseAuth.instance.signOut();

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const Onboarding(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          IconButton(onPressed: signUserOut, icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Text('Welcome, ${_currentUser?.email}'),
      ),
    );
  }
}
