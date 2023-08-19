import 'package:flutter/material.dart';

import 'package:surf_flutter_courses_template/categories.dart';
import 'package:surf_flutter_courses_template/my_card.dart';
import 'package:surf_flutter_courses_template/styles.dart';


class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child:  Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Mycard(),
          ),
          SizedBox(height: 20,),
          Category(),
          SizedBox(height: 20,),
          AppButton(),
        ],
      ),
    );
  }
}












class AppButton extends StatelessWidget {
  const AppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
              onPressed: () {
                
              },
            
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.buttonColor1,
              side: const BorderSide(color: AppColors.whiteColor, width: 1),
              shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
            ),
            child:  Text(AppStrings.buttonText3, 
            style: AppTypography.text18PacificoRegular.copyWith(color: AppColors.appColor1),
            
            ),
            );
  }
}