import 'package:flutter/material.dart';

Widget _buildRow(String id, String name, String age) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(id),
        Text(name),
        Text(age),
      ],
    ),
  );
}
