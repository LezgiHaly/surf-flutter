import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:surf_flutter_courses_template/styles.dart';

// экран Увлечения

class HobbyScreen extends StatelessWidget {
  const HobbyScreen({super.key});

  

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
      body: 
      CaruselPhoto(),
    );
  }
}


class CaruselPhoto extends StatelessWidget {
   CaruselPhoto({super.key});

final List <String> imgList = [
AppAssets.photoForCarusel1,
AppAssets.photoForCarusel2,
AppAssets.photoForCarusel3,
AppAssets.photoForCarusel4,
AppAssets.photoForCarusel5,
AppAssets.photoForCarusel6,
AppAssets.photoForCarusel7,
AppAssets.photoForCarusel8,
AppAssets.photoForCarusel9,
];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
           const SizedBox(height: 16,),
          Text(AppStrings.aboutHobbi, 
          textAlign: TextAlign.center,
          style: AppTypography.text18PacificoRegular.copyWith(color: AppColors.whiteColor),),
          const SizedBox(height: 20,),
          CarouselSlider(
            options: 
            CarouselOptions(
              autoPlay: false,
            ),
            items: imgList.map((item) {
              return GridTile(
                child: ClipRRect(borderRadius: BorderRadius.circular(20),
                  child: Image.asset(item, fit: BoxFit.cover, width: 300,),
                  ),
              );
            }).toList(),
          ),
          const SizedBox(height: 16,),
          ElevatedButton(
              onPressed: () {
                
              },
            
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.buttonColor1,
              side: const BorderSide(color: AppColors.whiteColor, width: 1),
              shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
            ),
            child:  Text(AppStrings.buttonText1, 
            style: AppTypography.text18PacificoRegular.copyWith(color: AppColors.appColor1),
            
            ),
            ),
        ],
      );
    
  }
}