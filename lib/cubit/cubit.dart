import 'package:athkar_mobile/SCREEN/Quraan_Screen.dart';
import 'package:athkar_mobile/SCREEN/Athkhar_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../MODEL/webview_model.dart';
import '../States/States.dart';

class athkar_cubit extends Cubit<states> {
  athkar_cubit() : super(intialstates());

  static athkar_cubit get(BuildContext context) => BlocProvider.of(context);

  int currentindex = 0;

  List<BottomNavigationBarItem> Navigations = [
    BottomNavigationBarItem(icon: Icon(Icons.more), label: 'Quraan'),
    BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Athkar'),
  ];
  List Screens = [Athkar(),Quraan() ];

  void Changebottom(int index) {
    currentindex = index;
    emit(bottomnavigte());
  }



}
