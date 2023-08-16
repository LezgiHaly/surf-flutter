import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/styles.dart';

// экран Опыт

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backColor,
      appBar: AppBar(
        backgroundColor: AppColors.backColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(AppStrings.hobbi),
        titleTextStyle: AppTypography.text35CaveatBold.copyWith(color: AppColors.appColor1),
      ),
      body:  Column(
        children: [
          const SizedBox(height: 16,),
          Text
          (AppStrings.experience, 
          textAlign: TextAlign.center,
          style: AppTypography.text35CaveatBold.copyWith(color: AppColors.whiteColor),)
      ],
      ),
    );
  }
}