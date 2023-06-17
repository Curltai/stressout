import 'package:flutter/material.dart';

import '../data/app_model.dart';
import '../widgets/app_card.dart';

class FavoriteAppsPage extends StatefulWidget {
  const FavoriteAppsPage({super.key});

  @override
  State<FavoriteAppsPage> createState() => _FavoriteAppsPageState();
}

class _FavoriteAppsPageState extends State<FavoriteAppsPage> {
  @override
  Widget build(BuildContext context) {
    List favoriteApps =
        apps.where((element) => element.favorite == true).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAVORITE APPS'),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            favoriteApps.length,
            (index) {
              return AppCard(app: favoriteApps[index]);
            },
          ),
        ),
      ),
    );
  }
}
