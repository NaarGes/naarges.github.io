import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final String iconPath;
  final VoidCallback onTap;

  const AppIcon({
    required this.iconPath,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        iconPath,
        color: Colors.white,
        width: 32,
        height: 32,
      ),
    );
  }
}
