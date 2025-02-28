import 'package:cityguideapp/misc/colors.dart';
import 'package:cityguideapp/widgets/app_large_text.dart';
import 'package:cityguideapp/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navPages/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppLargeText(text: "Welcome to CityGuide"),
            SizedBox(height: 10,),
            AppText(text: "Get Started with Us"),
            SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white60,
                border: Border.all(
                  color: Colors.black,
                  width: 1,

                )
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white60,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,

                  )
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your password",
    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(onTapUp: (_){
              Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context)=>MainPage()));
            },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.ButtonBackground,

                ),
                child: Center(child: AppLargeText(text:"Login", size: 18,color: Colors.white,),)
              ),
            ), SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.ButtonBackground,
                  
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("imgs/google.png", height: 20, width: 20,),
                  SizedBox(width: 12,),
                  AppLargeText(text:"Continue with Google", size: 18,color: Colors.white,)],)
            ),
          ],
        ),
      ),
    );
  }
}
