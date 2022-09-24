
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:odcw/viewmodel/page_cubit.dart';
import 'package:odcw/view/pages/hhome.dart';
import 'package:odcw/view/pages/home.dart';
import 'package:odcw/view/pages/settings.dart';
import 'package:odcw/view/pages/News.dart';



class page extends StatelessWidget {
int index;
  page(this.index);

  @override
  Widget build(BuildContext context) {

    return BlocProvider<PageCubit>(
      create: (context) => PageCubit()..changeindex(index),
      child: BlocConsumer<PageCubit,PageState>(
        listener: (context,state)=>{},
        builder: (context,state){
          var cubit =PageCubit.get(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(

              body: cubit.screen[cubit.current_index],

              bottomNavigationBar: BottomNavigationBar(

                currentIndex: cubit.current_index,
                items:cubit.nvitems,
                onTap: (index){
                  cubit.changeindex(index);
                },
              ),

            ),
          );
        },
      ),
    );
  }
}