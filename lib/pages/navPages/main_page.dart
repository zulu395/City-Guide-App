import 'package:cityguideapp/pages/navPages/bar_item.dart';
import 'package:cityguideapp/pages/home_page.dart';
import 'package:cityguideapp/pages/navPages/my_page.dart';
import 'package:cityguideapp/pages/navPages/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List Pages =[
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(
      name: "Izu",
      description: "bv rev jve rv",
      rating: 3.5,
      reviewsCount: 10,
      photoUrl: "imgs/pic1.jpg",
    ),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label:"Home",icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label:"Bar",icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label:"Search",icon: Icon(Icons.search)),
          BottomNavigationBarItem(label:"My Page",icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
