import 'package:cityguideapp/cubit/app_cubit.dart';
import 'package:cityguideapp/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_cubit_state.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits,CubitStates>(
          builder:(context,state) {
            if(state is WelcomeState){
              return WelcomePage();
            }else{
              return Container();
            };
          }

      ),
    );
  }
}
