import 'package:flutter/material.dart';
import 'package:tabletoys/Color/colours.dart';

class SquareTile extends StatelessWidget {
  final String imagetPath;
  const SquareTile({super.key, required this.imagetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: primary.shade200),
          borderRadius: BorderRadius.circular(16),
          color: primary),
      child: Image.asset(
        imagetPath,
        height: 40,
      ),
    );
  }
}
