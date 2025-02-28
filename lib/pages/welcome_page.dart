import 'package:cityguideapp/pages/LoginPage.dart';
import 'package:cityguideapp/pages/navPages/main_page.dart';
import 'package:cityguideapp/widgets/app_large_text.dart';
import 'package:cityguideapp/widgets/app_text.dart';
import 'package:cityguideapp/widgets/responsive_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../misc/colors.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<Map<String,dynamic>> slides = [
    {
      "img":"pic1.jpg",
          "title":const AppLargeText(text: "Trips"),
    },
    {
      "img":"pic2.jpg",
      "title":const AppLargeText(text: "Quality Tours",color: Colors.white60),
    },
    {
      "img":"pic3.jpg",
      "title":const AppLargeText(text: "Get Started"),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: slides.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("imgs/" + slides[index]['img']),
                      fit: BoxFit.cover)),


              child: Container(

                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      (slides[index]['title'] as Widget),
                      const AppText(text: "Tour Guide", size: 30,color: Colors.white60,),
                      const SizedBox(height: 20,),
                      const SizedBox(
                        width: 250,
                        child:  AppText(
                          text: "Mountain hikes gives you and incredible sense of freedom along with the endurance text",
                          color:Colors.white,
                          size: 14,

                        ),

                      ),
                      const SizedBox(height: 25,),
                      if(index > 1)
                      GestureDetector(onTapUp: (_){
                        Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context)=>LoginPage()));
                      }, child: ResponsiveButton(width: 120,))

                      // AppLargeText(text: "Trips"),Trips
                      // AppLargeText(text: "Trips", color: Colors.white,),
                    ],


                  ),
                  Column(
                    children: List.generate(3, (indexDots){
                      return Container(
                        width: 8,
                        margin: const EdgeInsets.only(bottom: 2),
                        height: index==indexDots?25:8,
                        decoration:  BoxDecoration(
                          borderRadius:  BorderRadius.circular(8),
                          color: index==indexDots?AppColors.MainColor:AppColors.MainColor.withOpacity(0.4)
                        ),
                      );
                    }),
                  )
                ]),
              ),
            );
          }),
    );
  }
}

