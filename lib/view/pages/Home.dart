import 'package:flutter/material.dart';
import 'package:odcw/view/pages/AddNote.dart';
import 'package:odcw/view/pages/Finals.dart';
import 'package:odcw/view/pages/Lectuer.dart';
import 'package:odcw/view/pages/Midterm.dart';
import 'package:odcw/view/pages/Midterms.dart';
import 'package:odcw/view/pages/Sections.dart';
import 'package:odcw/view/pages/bottom.dart';
import
'package:flutter/src/rendering/box.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column
                    (children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Orange ",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Degital Center",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                          child: InkWell(
                            onTap: (){

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const Lectuer()));
                            },
                            child: Container(

                              child: Card(
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(children: [

                                          CircleAvatar(
                                            child:   Image.asset(
                                                "assets/lecture.jpg"),
                                            radius: 45,
                                            backgroundColor: Colors.grey[200],




                                          ),
                                          Text(
                                            "Lectures",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.orange,
                                            ),
                                          ),
                                        ],
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: (){

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const Sections()));},
                          child: Card(
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      CircleAvatar(

                                          child: Image.asset(
                                              "assets/sections.jpg"),
                                          radius: 45,
                                          backgroundColor: Colors.grey[200]
                                      ),
                                      Text(
                                        "Sections",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: (){

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const Midterms()));},
                            child: Container(
                              child: Card(
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          CircleAvatar(

                                            child: Image.asset(
                                                "assets/midterm.jpg"),
                                            radius: 45,
                                            backgroundColor: Colors.grey[200],
                                          ),
                                          Text(
                                            "Midterms",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.orange,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: (){

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const Finals()));},
                            child: Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        CircleAvatar(

                                          child: Icon(
                                            Icons.grading_rounded,
                                            color: Colors.orange,
                                            size: 50,
                                          ),


                                          radius: 45,
                                          backgroundColor: Colors.grey[200],
                                        ),
                                        Text(
                                          "Finals",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orange,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],

                    ),

                    Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: (){

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const Midterm()));},
                              child: Container(
                                  child: Card(
                                      elevation: 5,
                                      child: Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    CircleAvatar(

                                                      child: Icon(
                                                        Icons.calendar_month_outlined,
                                                        color: Colors.orange,
                                                        size: 50,
                                                      ),
                                                      radius: 45,
                                                      backgroundColor: Colors.grey[200],
                                                    ),
                                                    Text(
                                                      "Events",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.orange,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ]
                                          )
                                      ))

                              ),
                            ),
                          )
                        ]

                    ),
                    Expanded(
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    child: ElevatedButton(
                                        child: Image.asset(
                                          "assets/notes.jpg",
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                const AddNote()),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.white)),
                                    radius: 45,
                                    backgroundColor: Colors.grey[200],
                                  ),
                                  Text(
                                    "Notes",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                  ],
                  ),

                ))));
  }
}
