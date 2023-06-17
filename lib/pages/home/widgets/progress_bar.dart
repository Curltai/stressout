import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final String itemName;
  final double progress;

  const ProgressBar({required this.itemName, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          itemName,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 10,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5),
              ),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: progress,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text((progress * 100).round().toString() + '%'),
          ],
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
