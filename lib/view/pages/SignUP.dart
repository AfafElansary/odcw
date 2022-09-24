import 'package:flutter/material.dart';
import 'package:odcw/view/pages/bottom.dart';
import 'package:odcw/view/pages/login.dart';

import '../../droplist.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> grads =[
      const DropdownMenuItem(
        child: Text("Grade 1"),
        value: ("Grade 1"),

    )];

    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(children: [
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
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    const Text(
                      " Sign UP ",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Name",
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "E-mail",
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.remove_red_eye_rounded,
                      color: Colors.orange,
                    ),
                    border: OutlineInputBorder(),
                    labelText: "password",
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.remove_red_eye_rounded,
                      color: Colors.orange,
                    ),
                    border: OutlineInputBorder(),
                    labelText: "password",
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "PhoneNumber",
                  ),
                ),
              SizedBox(height: 30),
                Row(
                    children: [
                      Column(
                children: [
                      Text("Grades"),
                      dropbuttom(items: grads, value: "Grade 1")


          ]),]),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text("Sign Up"),
                    style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  page(0) ));
                    },
                  ),
                ),
                SizedBox(height: 30),
                Row(

                  children: [
                    Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.black,
                          indent: 1,
                          endIndent: 1,
                        )),
                    Text("OR"),
                    Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.black,
                          indent: 1,
                          endIndent: 1,
                        ))
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(color: Colors.orange),
                    ),
                    onPressed: () {


    Navigator.push(context,
    MaterialPageRoute(builder: (context) =>( const  Login() )));
                    },
                  ),
                )
              ]),
            ),
          ),
        ));
  }
}