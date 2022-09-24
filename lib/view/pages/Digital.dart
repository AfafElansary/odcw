import 'package:flutter/material.dart';
import 'package:odcw/view/pages/News.dart';
import 'package:odcw/view/pages/bottom.dart';

class Digital extends StatelessWidget {
  const Digital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.all(0.0),
            child: Expanded(
                child: Container(
              width: 500,
              height: 250,
              child: Card(
                  elevation: 3,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 100),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right:100),
                              child: Row(children: [
                                CircleAvatar(
                               child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => page(1)));
                                  },
                                  icon: Icon(
                                    Icons.arrow_back_ios_new,
                                    color: Colors.orange,
                                  ),

                                ),
                                  backgroundColor: Colors.white,
                                  radius: 45,
                                )
                              ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(children: [
                                Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Row(children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Orange ",
                                              style: TextStyle(
                                                  fontSize: 33,
                                                  color: Colors.orange,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "Degital Center",
                                              style: TextStyle(
                                                  fontSize: 33,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ]),
                                    ]))
                              ]),
                            ),
                          ]))),
            ))),
        SizedBox(
          height: 10,
        ),
        Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("ODCs",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text("2022-07-06",
                        style: TextStyle(
                          color: Colors.orange,
                        ))
                  ],
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                ),
                Text(
                  "ODC Support ALL Universties",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ))
      ]),
    )));
  }
}
