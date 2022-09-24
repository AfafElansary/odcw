import 'package:flutter/material.dart';
import 'package:odcw/view/pages/FAQ.dart';
import 'package:odcw/view/pages/OurPartener.dart';
import 'package:odcw/view/pages/login.dart';
import 'package:odcw/view/pages/support.dart';
import 'package:odcw/view/pages/bottom.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Settings",
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              ListTile(
                title: Text("FAQ"),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const FAQ()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black38,
                indent: 1,
                endIndent: 1,
              ),
              const SizedBox(height: 10),
              ListTile(
                title: Text("Terms&Conditions"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
                thickness: 1,
                color: Colors.black38,
                indent: 1,
                endIndent: 1,
              ),
              const SizedBox(height: 10),
              ListTile(
                title: Text("Our Partenrs"),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OurPartener()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black38,
                indent: 1,
                endIndent: 1,
              ),
              const SizedBox(height: 10),
              ListTile(
                title: Text("Support"),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const support()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black38,
                indent: 1,
                endIndent: 1,
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: (){
                  setState(() {
                    showDialog(context: context, builder: (context)=>
                    AlertDialog(
                      title: const Text('Logout'),
                      content: const Text('Are you sure?'),
                      actions: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(color: Colors.orange),

                            primary: Colors.white,
                            textStyle: Theme
                                .of(context)
                                .textTheme
                                .labelLarge,


                          ),
                          child: const Text('cancel',style: TextStyle(
                            color: Colors.orange
                          ),),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            textStyle: Theme
                                .of(context)
                                .textTheme
                                .labelLarge,
                            primary: Colors.orange,

                          ),
                          child: const Text('sure'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()));
                          },

                        ),
                      ],
                    ));
                  });
                },
                child: ListTile(
                  title: Text("Log out"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ]),
          ),
        ));
  }
}
