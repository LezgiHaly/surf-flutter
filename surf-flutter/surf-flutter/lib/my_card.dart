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
          const SizedBox(width: 12,),
            Expanded(
            flex: 1,
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.name, style: 
              AppTypography.text22Regular.copyWith(color: AppColors.whiteColor),
              ),
              Text(AppStrings.work, style: 
              AppTypography.text10Regular.copyWith(color: AppColors.whiteColor),
              ),
            const SizedBox(height: 25,),
               Text(AppStrings.phone, style: 
              AppTypography.text10Regular.copyWith(color: AppColors.whiteColor),
              ),
               Text(AppStrings.mail, style: 
              AppTypography.text10Regular.copyWith(color: AppColors.whiteColor),
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