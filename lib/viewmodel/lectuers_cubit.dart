import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:odcw/view/pages/data.dart';
import 'package:odcw/view/pages/data.dart';
import '../view/pages/data.dart';
import '../view/pages/data.dart';
import '../view/pages/user.dart';
import '../model/lectuer.dart';
import '../network/dio_helper.dart';
import '../network/end_points.dart';
import '../view/pages/token.dart';
import '../view/pages/data.dart';
part 'lectuers_state.dart';

class LectuerCubit extends Cubit<LectuersState> {
  LectuerCubit() : super(LectuersInitial());

static LectuerCubit get(context) => BlocProvider.of(context);
LectureModel ? lec ;

void getData(){
  DioHelper.getData(url: lectureEndPoint , token: Token).then((value) {
    lec = LectureModel.fromJson(value.data);
    print("sucsses");

    emit(Lecturedone());
  });}}