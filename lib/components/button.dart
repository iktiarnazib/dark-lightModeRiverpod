import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Function()? ontap;
  Color? color;
  Color? textColor;
  Button({
    super.key,
    required this.ontap,
    required this.color,
    required textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 100,
        width: 100,
        child: Center(
          child: Text('TAP', style: TextStyle(color: textColor)),
        ),
      ),
    );
  }
}
