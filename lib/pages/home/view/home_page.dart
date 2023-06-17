import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stressout/pages/applications/apps.dart';
import 'package:stressout/pages/home/widgets/card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../onboarding/onboarding.dart';
import '../widgets/progress_bar.dart';

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
    double instagramHours = 15.0; // Hours spent on Instagram weekly
    double tiktokHours = 8.0; // Hours spent on TikTok weekly
    int stressLevel = 5; // Stress level

    double instagramProgress =
        instagramHours / 24.0; // Assuming a week has 24 hours
    double tiktokProgress = tiktokHours / 24.0; // Assuming a week has 24 hours
    double stressProgress =
        stressLevel / 10.0; // Assuming stress level ranges from 0 to 10

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
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     // Text('Welcome, ${_currentUser?.email}'),

              //     SvgPicture.asset('assets/images/background-home-1.svg',
              //         height: 150),
              //   ],
              // ),
              Text(
                // 'Welcome, ${_currentUser?.email}',
                'Welcome, Talant',
                style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProgressBar(
                        itemName: 'Instagram', progress: instagramProgress),
                    ProgressBar(itemName: 'TikTok', progress: tiktokProgress),
                    ProgressBar(itemName: 'Other', progress: stressProgress),
                  ],
                ),
              ),

              const Spacer(),
              const Divider(
                thickness: 2,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const AppsPage())),
                          },
                          child: const MyCard(
                              label: 'APPS',
                              imagePath: 'assets/images/card-1.svg'),
                        ),
                      ),
                      const Expanded(
                        child: MyCard(
                            label: 'STATISTICS',
                            imagePath: 'assets/images/card-2.svg'),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: MyCard(
                            label: 'WALLETS',
                            imagePath: 'assets/images/card-3.svg'),
                      ),
                      Expanded(
                        child: MyCard(
                            label: 'SETTINGS',
                            imagePath: 'assets/images/card-4.svg'),
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
