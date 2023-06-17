import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stressout/pages/applications/data/app_model.dart';
import 'package:stressout/pages/instagram/views/main.dart';

class AppCard extends StatelessWidget {
  final ApplicationName app;

  const AppCard({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Instagram())),
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: Color.fromARGB(253, 238, 4, 90),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              SvgPicture.asset(
                app.icon,
                height: 100,
                color: Colors.white,
              ),
              Text(
                app.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
