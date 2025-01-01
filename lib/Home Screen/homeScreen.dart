import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'customAppBar.dart';
import 'tourismCards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomAppBar(screenWidth: screenWidth, screenHeight: screenHeight),
            const Gap(16),
            Expanded(
              child: TourismCards(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
