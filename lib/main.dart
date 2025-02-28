import 'package:cityguideapp/cubit/app_cubit.dart';
import 'package:cityguideapp/pages/LoginPage.dart';
import 'package:cityguideapp/pages/detail_page.dart';
import 'package:cityguideapp/pages/home_page.dart';
import 'package:cityguideapp/pages/navPages/Map_section.dart';
import 'package:cityguideapp/pages/navPages/bar_item.dart';
import 'package:cityguideapp/pages/navPages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:cityguideapp/pages/welcome_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const CityGuide());

class CityGuide extends StatelessWidget {
  const CityGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor:  Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}
