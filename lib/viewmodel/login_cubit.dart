import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

import '../model/Login_model.dart';
import '../network/dio_helper.dart';
import '../network/end_points.dart';
import '../view/pages/token.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context)=>BlocProvider.of(context);

  TextEditingController email=TextEditingController();
  TextEditingController pass=TextEditingController();

  LoginModel? user;
  String massage='';


  Future<void> Login({required   TextEditingController email,required TextEditingController pass}) async {
    var json= {
      'email':email.text.toString(),
      'password':pass.text.toString(),

    };
    await DioHelper.postData(url: loginEndPoint, data: json).then((value) {
      user=LoginModel.fromJson(value.data);
      print(value.data);
      Token = user!.data!.accessToken.toString();
      emit(loginscessed());

    }).catchError((e){
      print(e);
      emit(loginerror());});




  }
}
  //single instance
// object from model
//controoler (email , pass)
//login fun
/*
void login ()
{
diohelper.post(url , data)..then(value)
}
* */


