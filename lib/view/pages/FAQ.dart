import 'package:flutter/material.dart';
import 'package:odcw/view/pages/settings.dart';
import 'package:odcw/view/pages/bottom.dart';

class FAQ extends  StatelessWidget {
  const FAQ({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          child: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => page(2)));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),

          ),
          radius: 45,
          backgroundColor: Colors.white,
        ),
        title: Text(
          "FAQ",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
          child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
              children:  [
                ExpansionTile(
                  collapsedBackgroundColor: Colors.orange,
                  iconColor: Colors.black,
                  title: Text("How many countries  orange digital center is in?",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black
                ),)
                  ,children:[

                    Divider(
                      thickness: 1,
                      color: Colors.black,
                      indent: 1,
                      endIndent: 1,
                    ),

                Text("16 Country",
                  style: TextStyle(
                    fontSize: 20,
                  ),)],
                backgroundColor: Colors.orange,
                )

          ]
          )
          )
    )
    ));
  }}