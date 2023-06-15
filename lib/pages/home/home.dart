import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stressout/pages/home/widgets/card.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text('Welcome, ${_currentUser?.email}'),

                  SvgPicture.asset('assets/images/background-home-1.svg',
                      height: 200),
                ],
              ),
              const Spacer(),
              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: MyCard(
                            label: 'APPS',
                            imagePath: 'assets/images/card-1.svg'),
                      ),
                      Expanded(
                        child: MyCard(
                            label: 'STATISTICS',
                            imagePath: 'assets/images/card-2.svg'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MyCard(
                            label: 'APPS',
                            imagePath: 'assets/images/card-1.svg'),
                      ),
                      Expanded(
                        child: MyCard(
                            label: 'STATISTICS',
                            imagePath: 'assets/images/card-2.svg'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
