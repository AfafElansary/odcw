import 'package:flutter/material.dart';
import 'package:odcw/view/pages/bottom.dart';
import 'package:odcw/view/pages/settings.dart';

class OurPartener extends StatelessWidget {
  const OurPartener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: CircleAvatar(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>page(2)));
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.orange,
              ),

            ),
            radius: 45,
            backgroundColor: Colors.white,
          ),

        title: Text(
          "Our Partener",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  width: 500,
                  height: 300,
                  child: Card(
                      elevation: 20,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(children: [
                              Text(
                                "ODCs",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ]),
                          ),
                          SizedBox(
                            height: 40,
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
                        ],
                      ),
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ))))
        ],
      ),
    );
  }
}
