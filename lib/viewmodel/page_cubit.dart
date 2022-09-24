
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:odcw/view/pages/hhome.dart';
import 'package:odcw/view/pages/News.dart';
import 'package:odcw/view/pages/settings.dart';

part 'page_state.dart';

class PageCubit extends Cubit<PageState> {
  PageCubit() : super(PageInitial());

  static PageCubit get(context) => BlocProvider.of(context);
  int current_index = 0;
  List<BottomNavigationBarItem>nvitems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home,color: Colors.orange,),
      label: "Home",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.orange,
      icon: Icon(Icons.insert_page_break_outlined),
      label: "News",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.orange,
      icon: Icon(Icons.settings,),
      label: "Settings",


    ),


  ];
  List<Widget> screen = [
    home(),
    News(),
    Settings(),


  ];

  void changeindex(index) {
    current_index = index;

    emit(changenevbottom_state());
  }

}