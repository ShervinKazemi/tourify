import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  const CustomAppBar(
      {super.key, required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: screenWidth,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: isDarkMode
                ? Colors.black.withOpacity(0.2)
                : Colors.black.withOpacity(0.05),
            blurRadius: isDarkMode ? 15 : 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildMenuButton(context, isDarkMode),
              _buildTitle(context, isDarkMode),
              _buildProfileImage(context, isDarkMode),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, bool isDarkMode) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isDarkMode
              ? Colors.white.withOpacity(0.05)
              : Theme.of(context).primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(64),
        ),
        child: Icon(
          CupertinoIcons.bars,
          size: 28,
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context, bool isDarkMode) {
    return Text(
      'Tourify',
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildProfileImage(BuildContext context, bool isDarkMode) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: isDarkMode
              ? Colors.white.withOpacity(0.2)
              : Theme.of(context).primaryColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: isDarkMode
                ? Colors.black.withOpacity(0.3)
                : Theme.of(context).primaryColor.withOpacity(0.2),
            blurRadius: isDarkMode ? 12 : 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipOval(
        child: Image.asset(
          "assets/images/shervin_1385.jpg",
          height: 40,
          width: 40,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              height: 40,
              width: 40,
              color: isDarkMode
                  ? Colors.white.withOpacity(0.05)
                  : Theme.of(context).primaryColor.withOpacity(0.1),
              child: Icon(
                Icons.person,
                color: isDarkMode
                    ? Colors.white.withOpacity(0.7)
                    : Theme.of(context).primaryColor,
              ),
            );
          },
        ),
      ),
    );
  }
}
