import 'package:flutter/material.dart';

class CustomNavigationBarItem extends StatelessWidget {
  final Image image;
  final String label;
  final VoidCallback onPressed;
  const CustomNavigationBarItem({
    super.key,
    required this.image,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          image,
          const SizedBox(height: 3),
          Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
