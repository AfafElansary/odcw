import 'package:flutter/material.dart';
import 'package:odcw/view/pages/bottom.dart';
import 'package:odcw/view/pages/hhome.dart';
import 'package:odcw/view/pages/home.dart';

class Midterms extends StatelessWidget {
  const Midterms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            child:  IconButton(
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
            "Midterms",
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
        body: Center(
            child: Text(
          "No exams",
          textAlign: TextAlign.center,
        )));
  }
}
