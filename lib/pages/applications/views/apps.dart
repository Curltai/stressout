import 'package:flutter/material.dart';
import 'package:stressout/pages/applications/data/app_model.dart';
import 'package:stressout/pages/applications/widgets/app_card.dart';

class AppsPage extends StatefulWidget {
  const AppsPage({super.key});

  @override
  State<AppsPage> createState() => _AppsPageState();
}

class _AppsPageState extends State<AppsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APPS MENU'),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            apps.length,
            (index) {
              return AppCard(app: apps[index]);
            },
          ),
        ),
      ),
    );
  }
}
