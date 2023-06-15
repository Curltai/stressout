import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.onTap,
      this.label = 'Login',
      this.heroTag = 'btn1'});

  final Function()? onTap;
  final String label;
  final Object heroTag;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: FloatingActionButton(
        heroTag: heroTag,
        onPressed: onTap,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(label),
      ),
    );
  }
}
