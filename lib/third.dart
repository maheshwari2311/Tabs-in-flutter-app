import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.airport_shuttle,
            size: 160.0,
          ),
          Text(
            "third Tabs",
          ),
        ],
      ),
    );
  }
}
