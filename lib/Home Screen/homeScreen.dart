import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'customAppBar.dart';
import 'tourismCards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final screenHeight = constraints.maxHeight;

        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAppBar(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                ),
                const Gap(16),
                Expanded(
                  child: RepaintBoundary(
                    child: TourismCards(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
