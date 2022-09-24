import 'package:flutter/material.dart';
import 'package:odcw/view/pages/bottom.dart';
import 'package:odcw/view/pages/settings.dart';

class support extends StatelessWidget {
  const support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(          leading: CircleAvatar(
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
            "Support",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                            labelText: "Name",
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                            labelText: "E-mail",
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          maxLines: 7,
                          decoration: InputDecoration(
                            hintText: "what's makeing you unhappy",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            child: Text("Submit"),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )))));
  }
}
