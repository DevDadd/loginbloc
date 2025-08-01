import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({super.key, required this.title, required this.color});
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(color: color, child: Text(title));
  }
}
