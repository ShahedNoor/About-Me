import 'package:flutter/material.dart';

import '../utils/colors.dart';

class MyIcon extends StatelessWidget {
  final Icon icon;

  const MyIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: AppColor.deepPurplePrimary,
        borderRadius: BorderRadius.circular(100),
        gradient: const LinearGradient(
          colors: [AppColor.deepPurplePrimary, AppColor.lightPurplePrimary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: icon,
    );
  }
}
