import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const CustomAppBar(
      {super.key, required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.bars,
              size: 35,
            ),
            ClipOval(
              child: Image.asset(
                "assets/images/shervin_1385.jpg",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
