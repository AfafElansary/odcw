import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:odcw/view/pages/Sections.dart';
import 'package:odcw/view/pages/data.dart';
import 'package:odcw/view/pages/data.dart';
import '../view/pages/data.dart';
import '../view/pages/data.dart';
import '../view/pages/user.dart';
import '../model/exam.dart';
import '../network/dio_helper.dart';
import '../network/end_points.dart';
import '../view/pages/token.dart';
import '../view/pages/data.dart';
import '../view/pages/Finals.dart';

part 'finals_state.dart';

class FinalsCubit extends Cubit<FinalsState> {
  FinalsCubit() : super(FinalsInitial());
  static FinalsCubit get(context) => BlocProvider.of(context);
  ExamModel ? exa;
  void getData(){
    DioHelper.getData(url: lectureEndPoint , token: Token).then((value) {
      exa = ExamModel.fromJson(value.data);
      print("sucsses");

      emit(Examdone());
    });}}


