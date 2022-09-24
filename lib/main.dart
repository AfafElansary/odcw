import 'package:flutter/material.dart';
import 'package:odcw/network/dio_helper.dart';
import 'view/pages/News.dart';
import 'view/pages/add note.dart';
import 'view/pages/AddNote.dart';
import 'view/pages/Digital.dart';
import 'view/pages/FAQ.dart';
import 'view/pages/Finals.dart';
import 'view/pages/Lectuer.dart';
import 'view/pages/Home.dart';
import 'view/pages/login.dart';
import 'view/pages/Midterm.dart';
import 'view/pages/Midterms.dart';
import 'view/pages/SignUP.dart';
import 'view/pages/OurPartener.dart';
import 'view/pages/Sections.dart';
import 'view/pages/Splash.dart';
import 'view/pages/support.dart';
import 'view/pages/Midterms.dart';
import 'view/pages/settings.dart';
import 'view/pages/bottom.dart';
import 'view/pages/bottom.dart';
import 'view/pages/hhome.dart';
import 'view/pages/show.dart';

void main()
async{
  await DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home:Login()


        );
  }
}
