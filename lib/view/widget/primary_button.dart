import 'package:flutter/material.dart';
import 'package:walk_mate/constants/app_color.dart';
import 'package:walk_mate/constants/app_text_style.dart';

class PrimaryButton extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;

  const PrimaryButton({super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: MaterialButton(
        onPressed: onPressed,
        height: 60,
        minWidth: screenWidth,
        elevation: 0,
        color: AppColors.primaryColor,
        splashColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          name,
          style: AppTextStyle.buttonStyle,
        ),
      ),
    );
  }
}
