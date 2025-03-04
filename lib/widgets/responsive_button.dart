import 'package:cityguideapp/misc/colors.dart';
import 'package:cityguideapp/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends  StatelessWidget {
  bool isResponsive;
  double? width;
   ResponsiveButton({super.key, this.width=120,this.isResponsive=false});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width:isResponsive==true?double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.MainColor
        ),
        child: Row(
          mainAxisAlignment: isResponsive==true?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
          children: [
            isResponsive==true?Container(
              margin:const EdgeInsets.only(left: 20,) ,
                child: AppText(text: "Book a Trip Now",color: Colors.white,)):Container(),
            Container(
              margin: const EdgeInsets.only(right: 20),
                child: Image.asset("imgs/right-arrow.png"))
          ],
        ),
      ),
    );
  }
}