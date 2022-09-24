import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcw/view/pages/bottom.dart';
import 'package:odcw/view/pages/hhome.dart';
import 'package:odcw/view/pages/home.dart';
import '../../model/lectuer.dart';
import '../../viewmodel/lectuers_cubit.dart';

import '../../view/pages/token.dart';

class Lectuer extends StatelessWidget {
  const Lectuer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


  return
    BlocProvider(
      create: (context) => LectuerCubit()..getData(),
      child: BlocConsumer<LectuerCubit, LectuersState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
    LectuerCubit myCubit = LectuerCubit.get(context);
return Scaffold(
    appBar: AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: IconButton(
    icon: Icon(
    Icons.arrow_back_ios_new,
    color: Colors.orange
    ),
    onPressed: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => page(0)));
    },
    ),
    title: Text(
    'Lectures',
    style: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 30,
    color: Colors.black
    ),
    ),
    actions: [
    IconButton(
    onPressed: (){},
    icon: Icon(
    Icons.filter_list_alt,
    color: Colors.orange,
    size: 30,
    ),
    )
    ],
    ),
    body: Padding(
    padding: const EdgeInsets.all(0.0),
    child: myCubit.lec == null
    ? Center(
    child:Text("loading....."),
    )
        : ListView.builder(
    itemCount: myCubit.lec!.data!.length,
    itemBuilder: (context, index) {


    return Card(
    elevation: 5,
    child: Padding(
    padding: const EdgeInsets.all(5),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [


    Text( "${ myCubit.lec!.data![index].lectureSubject.toString()}",style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    ),
    ),
    Row(
    children: [
    Icon(Icons.alarm_rounded),
    SizedBox(
    width: 2,
    ),
    Text("2hrs")
    ],
    ),
    ]),
    SizedBox(
    height: 20,
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Column(
    children: [
    Text(
    "${ myCubit.lec!.data![index].lectureDate.toString()}",
    style: TextStyle(color: Colors.grey),
    ),
    SizedBox(
    height: 5,
    ),
    Row(children: [
    Icon(Icons.date_range_outlined),
    SizedBox(
    width: 2,
    ),
    Text("${myCubit.lec!.data![index].lectureDate .toString()}"),
    ]),
    ],
    ),
    Column(
    children: [
    const Text(
    'Start Time',
    style: TextStyle(color: Colors.grey),
    ),
    SizedBox(
    height: 5,
    ),
    Row(
    children: [
    Icon(
    Icons.watch_later,
    color: Colors.greenAccent,
    ),
    SizedBox(
    height: 2,
    ),
    Text("${myCubit.lec!.data![index].lectureStartTime.toString()}")
    ],
    )
    ],
    ),
    Column(
    children: [
    Text(
    "End Time",
    style: TextStyle(color: Colors.grey),
    ),
    SizedBox(
    height: 5,
    ),
    Row(
    children: [
    Icon(
    Icons.watch_later,
    color: Colors.redAccent,
    ),
    SizedBox(
    width: 2,
    ),
    Text("${ myCubit
        .lec!.data![index].lectureEndTime
        .toString()}")
    ],
    )
    ],
    ),
    ],
    )
    ],
    ),
    ),

    );
    }
    ),
    ));;;
    }
    ));}}




