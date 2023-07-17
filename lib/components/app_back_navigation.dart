import 'package:flutter/material.dart';

class AppBackNavigation extends StatelessWidget {
  const AppBackNavigation({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        const SizedBox(
          width: 80,
        ),
        Text(
         title,
          style: const TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
