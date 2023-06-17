import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stressout/pages/applications/apps.dart';
import 'package:stressout/pages/home/view/home_page.dart';
import 'package:stressout/pages/home/widgets/card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stressout/pages/login/views/forgot_page.dart';
import 'package:stressout/pages/user/user.dart';
import 'package:stressout/pages/wallet/wallet.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  List pages = [
    const Home(),
    const FavoriteAppsPage(),
    const WalletPage(),
    const UserProfilePage(),
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColorLight,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.wallet), label: 'Wallet'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person_2), label: 'Profile'),
        ],
        onTap: onTap,
      ),
    );
  }
}
