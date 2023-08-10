import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/styles.dart';

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: AppColors.backColor1 ),
      child: Row(
        children: [
           const Expanded(
            flex: 1,
             child: Column(
              children: [
                Text(AppStrings.name, style: 
                TextStyle(color: Colors.white, fontSize: 14, 
                fontFamily: 'RobotoMono',
                ),

              // AppTypography.text12Regular.copyWith(color: AppColors.whiteColor),
              ),
              ],
                     ),
           ),
          ClipRRect(
            borderRadius: const BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25)),
            child: Image.asset(AppAssets.myPhoto, width: 150, height: 150,))
        ],
      ),
    );
  }
}