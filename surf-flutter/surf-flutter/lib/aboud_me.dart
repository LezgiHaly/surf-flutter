
// экран "Обо себе"


import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/styles.dart';


class AboutMeScreen extends StatefulWidget {
   const AboutMeScreen({super.key});

  @override
  State<AboutMeScreen> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
   String complement = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backColor,
      appBar: AppBar(backgroundColor: AppColors.backColor,
      centerTitle: true,
      elevation: 0,
      title: const Text(AppStrings.aboudY),
      titleTextStyle: AppTypography.text35CaveatBold.copyWith(color: AppColors.appColor1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 16,),
            Text(AppStrings.aboutMe, 
            textAlign: TextAlign.center,
            style: AppTypography.text35CaveatBold.copyWith(color: AppColors.whiteColor),
            ),

            ElevatedButton(
              onPressed: () {
              setState(() {
                 complement = 'You are BEST!';
              });
            }, 
            
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.buttonColor1,
              side: const BorderSide(color: AppColors.whiteColor, width: 1),
              shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
              
            ),

            child:  Text(AppStrings.buttonText, 
            style: AppTypography.text18PacificoRegular.copyWith(color: AppColors.appColor1),
            
            ),
            ),
           const  SizedBox(height: 16,),
           Text(complement,
           style: AppTypography.text22Regular.copyWith(color: AppColors.whiteColor),
           ),
      

          ],
        ),
      )
    );
  }
}