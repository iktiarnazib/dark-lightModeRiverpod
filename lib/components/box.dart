import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Widget? child;
  final Color? color;

  const Box({super.key, required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 200,
      width: 200,
      padding: EdgeInsets.all(40),
      child: Center(child: child),
    );
  }
}
