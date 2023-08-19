import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/aboud_me.dart';
import 'package:surf_flutter_courses_template/styles.dart';

import 'experience_screen.dart';
import 'hobby_screen.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      direction: Axis.vertical,
      spacing: 20,
      children: [
      AboutMe(),
      Hobby(),
      Experience(),
    ],);
  }
}


// я реализовал чтоб был один контейнер для всех катеорий, но не понял как реализовать переход по разным экранам) поэтому сделал таким образовм 
class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return
GestureDetector(
  onTap:() {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>  const AboutMeScreen()));
  },
  child: Container(
        width: 280, height: 90,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: AppColors.backColor1),
        child: Column( 
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
      const SizedBox(height: 10,),
            Expanded(
              flex: 3,
              child: Text(AppStrings.aboudY, style: AppTypography.text18PacificoRegular.copyWith(color: AppColors.whiteColor),
              ),
              ),
            const Icon(Icons.person_pin, 
            color: AppColors.appColor1,
            size: 35,
            ),
            const SizedBox(height: 16,)
            ]
            ),
            ),
);
}
}

class Hobby extends StatelessWidget {
  const Hobby({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
  onTap:() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HobbyScreen()));
  },
  child: Container(
       width: 280, height: 90,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: AppColors.backColor1),
        child: Column( 
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
      const SizedBox(height: 10,),
            Expanded(
              flex: 3,
              child: Text(AppStrings.hobbi, style: AppTypography.text18PacificoRegular.copyWith(color: AppColors.whiteColor),
              ),
              ),
            const Icon(Icons.camera, 
            color: AppColors.appColor1,
            size: 35,
            ),
            const SizedBox(height: 16,)
            ]
            ),
            ),
);
}
}
class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
  onTap:() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ExperienceScreen()));
  },
  child: Container(
        width: 280, height: 90,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: AppColors.backColor1),
        child: Column( 
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
      const SizedBox(height: 10,),
            Expanded(
              flex: 3,
              child: Text(AppStrings.developmentExperience, style: AppTypography.text18PacificoRegular.copyWith(color: AppColors.whiteColor),
              ),
              ),
            const Icon(Icons.cases_sharp, 
            color: AppColors.appColor1,
            size: 35,
            ),
            const SizedBox(height: 16,)
            ]
            ),
            ),
);


}
}







// реализация одой картой 

class Category1 extends StatelessWidget {
  const Category1({super.key});
    @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 15,
      children:moks.map((cardStack) => StackCard(cardStack: cardStack)).toList() ,
    );
  }
}
class CardStack  {

  final String name;
  final  IconData icon;

  CardStack({required this.name, required this.icon});
}
  
  class StackCard extends StatelessWidget {
    final CardStack cardStack;
  const StackCard({super.key, required this.cardStack});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112, height: 80,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: AppColors.backColor1),
      child: Column( 
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
    const SizedBox(height: 16,),
          Expanded(
            flex: 2,
            child: Text(cardStack.name, style: AppTypography.text18PacificoRegular.copyWith(color: AppColors.whiteColor),)),
          Icon(cardStack.icon, 
          // size: 25, 
          color: AppColors.appColor1),
          const SizedBox(height: 16,)
        ],
      ),
    );
  }
}

 final List <CardStack> moks = [
   CardStack(name: AppStrings.aboudY, icon: Icons.person_pin),
   CardStack(name: AppStrings.hobbi, icon: Icons.camera,),
   CardStack(name: AppStrings.developmentExperience, icon: Icons.cases_sharp),
   ];