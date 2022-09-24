import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcw/view/pages/SignUP.dart';
import 'package:odcw/view/pages/bottom.dart';

import '../../viewmodel/login_cubit.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController email=TextEditingController();
    TextEditingController pass=TextEditingController();
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LoginCubit  login=LoginCubit.get(context);
          return Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(children: [
                      SizedBox(height: 30),
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
                            " Login ",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      TextFormField(
                        controller: email,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.orange, width: 2.0),),
                          labelText: "E-mail",
                        ),

                      ),
                      SizedBox(height: 30),
                      TextFormField(
controller: pass,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.remove_red_eye_rounded,
                            color: Colors.orange,
                          ),
                          border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.orange, width: 2.0)),
                          labelText: "password",
                        ),
                      ),
Row(children: [

                    TextButton(onPressed: (){},
                      child: const Text('Forget Password?',style:TextStyle(
                        fontSize: 17,decorationThickness: 1.75,
                        color: Colors.orangeAccent,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.orange
                      ) ,

                      ),


                    ),
]),
                      SizedBox(height: 30),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Text("Login"),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrange),
                          onPressed: () {
                           Navigator.push(context,
                                MaterialPageRoute(builder: (context) => page(0)));
                            login.Login( email: email,pass: pass);
                          },
                        ),
                      ),
                      SizedBox(height: 20),
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
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.black),

                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(color: Colors.orange),
                          ),
                          onPressed: ()

                               {
                                 Navigator.push(context,
                                     MaterialPageRoute(builder: (context) => const signup()));
                               },
                        ),
                      )
                    ]),
                  ),
                ),
              ));
        },
      ),
    );
  }
}
