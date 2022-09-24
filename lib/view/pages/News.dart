import 'package:flutter/material.dart';
import 'package:odcw/view/pages/Digital.dart';
import 'package:odcw/view/pages/bottom.dart';


class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "News",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                      child: Container(
                          width: 400,
                          height: 350,
    child: InkWell(onTap: (){
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) =>
    const Digital()));
    },
                          child: Card(
                            elevation: 10,
                            child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(children: [
                                        Row(children: [



                                        ]),
                                        Row(children: [
                                          Text(
                                            "ODCs",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 145,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Row(children: [
                                              Container(
                                                width: 120,
                                                height: 70,
                                                child: Card(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.share_outlined,
                                                          color: Colors.white,
                                                        ),
                                                        Text(
                                                          "  | ",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 30,
                                                            color:
                                                                Colors.black38,
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.copy,
                                                          color: Colors.white,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  color: Colors.orange,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(10),
                                                    ),
                                                  ),
                                                ),

                                              )

                                            ]),
                                          ),
                                        ]),
                                        SizedBox(
                                          height: 35,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Row(children: [
                                            Padding(
                                                padding:
                                                    const EdgeInsets.all(0),
                                                child: Row(children: [
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "Orange ",
                                                          style: TextStyle(
                                                              fontSize: 33,
                                                              color:
                                                                  Colors.orange,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Text(
                                                          "Degital Center",
                                                          style: TextStyle(
                                                              fontSize: 33,
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ]),
                                                ]))
                                          ]),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "ODC Supports All University ",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ],
                                            ))
                                      ])
                                    ])),
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ))))),
          )));
  }
}
