import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcw/view/pages/bottom.dart';
import 'package:odcw/view/pages/hhome.dart';
import 'package:odcw/view/pages/home.dart';

import '../../viewmodel/sections_cubit.dart';

class Sections extends StatelessWidget {
  const Sections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
          create: (context) => SectionsCubit()..getData(),
          child: BlocConsumer<SectionsCubit, SectionsState>(
          listener: (context, state) {
      // TODO: implement listener
    },
    builder: (context, state) {
    SectionsCubit myCubit = SectionsCubit.get(context);
    return Scaffold(
        appBar: AppBar(

          leading: CircleAvatar(
            child: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => page(0)));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.orange,
            ),

          ),
            radius: 45,
            backgroundColor: Colors.white,
    ),
          title: const Text(
            "Sections",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.filter_alt,
              color: Colors.orange,
            )
          ],
          backgroundColor: Colors.white,
        ),
          body: Padding(
    padding: const EdgeInsets.all(0.0),
    child: myCubit.sec == null
    ? Center(
    child:Text("loading....."),
    )
        : ListView.builder(
        itemCount: myCubit.sec!.data!.length,
        itemBuilder: (context, index) {
        return
                          Card(
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${ myCubit.sec!.data![index].sectionSubject.toString()}",
                                          style: TextStyle(
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
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "${ myCubit.sec!.data![index].sectionDate.toString()}",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(children: [
                                            Icon(Icons.date_range_outlined),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Text("wednesday"),
                                          ]),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const Text(
                                            'Start Time',
                                            style:
                                                TextStyle(color: Colors.grey),
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
                                              Text("${myCubit.sec!.data![index].sectionStartTime.toString()}")
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "End Time",
                                            style:
                                                TextStyle(color: Colors.grey),
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
        .sec!.data![index].sectionEndTime
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

