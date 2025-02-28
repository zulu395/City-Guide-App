import 'package:cityguideapp/data/trips.dart';
import 'package:cityguideapp/misc/colors.dart';
import 'package:cityguideapp/pages/detail_page.dart';
import 'package:cityguideapp/widgets/app_large_text.dart';
import 'package:cityguideapp/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    "pic6.jpg":"School",
    "pic5.jpg":"Hospital",
    "pic4.jpg":"Restaurant",
    "pic3.jpg":"Gym",
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Menu text
            Container(
              padding: const EdgeInsets.only(top: 70, left: 20),
              child: Row(
                children: [
                  Icon(Icons.menu, size: 30, color: Colors.black54),
                  Expanded(child: Container()),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.5)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            //Discover Text
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: AppLargeText(text: "Discover"),
            ),
            const SizedBox(
              height: 50,
            ),
            //tabbar
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator:
                      CircleTabIndicator(color: AppColors.MainColor, radius: 4),
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  tabs: const [
                    Tab(
                      text: "Places",
                    ),
                    Tab(
                      text: "Inspirations",
                    ),
                    Tab(
                      text: "Emotions",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView(
                    scrollDirection: Axis.horizontal,

                      children:[ ...TRIPS.map((trip) =>  GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>DetailPage(
                            title: trip['title'],
                            description: trip['Description'],
                            rating: trip['rating'] as double,
                            location: trip['Location'],
                            img: trip['ImgUrl'],
                            price: trip['Price'],
                          )));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 15, top: 10),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(trip["ImgUrl"]),
                                  fit: BoxFit.cover)),
                        ),
                      ))]

                  ),
                  Text("Hi"),
                  Text("There"),
                  Text("Bye")
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(
                    text: "Explore More",
                    size: 20,
                  ),
                  AppText(
                    text: "see all",
                    color: AppColors.textColor1,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 120,
              width: double.maxFinite,
              margin: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 30),
                      child: Column(
                        children: [
                          Container(
                           // margin: const EdgeInsets.only(
                              //right: 15,
                            //),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image:  DecorationImage(
                                    image: AssetImage("imgs/"+images.keys.elementAt(index)),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            child: AppText(
                              text:images.values.elementAt(index),
                              color: AppColors.textColor2,
                            size: 14,),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _Paint = Paint();
    _Paint.color = color;
    _Paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);

    canvas.drawCircle(offset + circleOffset, radius, _Paint);
  }
}
