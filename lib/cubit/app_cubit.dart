import 'package:bloc/bloc.dart';
import 'package:cityguideapp/cubit/app_cubit_state.dart';
import 'package:cityguideapp/pages/welcome_page.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits(): super(InitialState()){
    emit(WelcomeState());

  }
}