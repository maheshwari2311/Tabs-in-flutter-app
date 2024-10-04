import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.adb,
            color: Colors.green,
            size: 160.0,
          ),
          Text(
            "second tab",
          ),
        ],
      ),
    );
  }
}
