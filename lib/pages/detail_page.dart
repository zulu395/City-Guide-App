import 'package:cityguideapp/misc/colors.dart';
import 'package:cityguideapp/widgets/app_button.dart';
import 'package:cityguideapp/widgets/app_large_text.dart';
import 'package:cityguideapp/widgets/app_text.dart';
import 'package:cityguideapp/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.title, required this.description, required this.rating, required this.img, required this.price, required this.location});

  final String title, description, img, price, location;
  final double rating;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // double gottenstars = widget.rating;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                    width: double.maxFinite,
                    height: 350,
                    decoration:  BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.img),
                            fit: BoxFit.cover)))),
            Positioned(
                left: 20,
                top: 50,
                child: Row(
                    children: [
                      IconButton(

                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.chevron_left_rounded, color: Colors.white,),
                      )
                    ],

                )),
            Positioned(
                top: 320,
                child: Container(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: widget.title,
                            color: Colors.black54.withOpacity(0.9),
                          ),
                           AppLargeText(
                            text: widget.price,
                            color: AppColors.textColor1,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                       Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.textColor1,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          AppText(
                            text: widget.location,
                            color: AppColors.textColor1,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(Icons.star,
                                  color: index < widget.rating
                                      ? Colors.amber
                                      : AppColors.textColor2);
                            }),
                          ),
                          const SizedBox(width: 10,),
                           AppText(
                            text: "(${widget.rating})",
                            color: AppColors.textColor2,
                          )
                        ],
                      ),
                      const SizedBox(height: 30,),
                      AppLargeText(
                        text: "People",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      const SizedBox(height: 5,),
                      AppText(
                        text: "Number of People in your Group",
                        color: Colors.black.withOpacity(0.5),
                      ),
                      const SizedBox(height: 15,),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: (){
                            setState(() {
                              selectedIndex=index;
                            });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10, left: 2),
                              child: AppButtons(
                                  color: selectedIndex==index?Colors.white:Colors.white,
                                  size: 50,
                                  backgroundColor: selectedIndex==index?Colors.black:AppColors.ButtonBackground,
                                  borderColor: selectedIndex==index?Colors.black:AppColors.ButtonBackground,
                                  text:(index+1).toString(),
                              ),
                            ),
                          );

                        }),
                      ),
                      const SizedBox(height: 30,),
                      AppLargeText(text: "Description",color: Colors.black.withOpacity(0.8),size: 21,),
                      const SizedBox(height: 10,),
                       AppText(text: widget.description, size: 17,)
                    ],
                  ),
                )),
            Positioned(
               bottom: 60,
                left:20,
                right: 20,
                child: Row(
                  children: [
                    AppButtons(size: 60,
                        color: AppColors.textColor2,
                        backgroundColor: Colors.white,
                        borderColor: AppColors.textColor2,
                    isIcon:true,
                      icon: Icons.favorite_border,),
                    SizedBox(width: 20,),
                    ResponsiveButton(
                      isResponsive: true,
                    )

                  ],

                ),)
          ],
        )
    );
  }
}
