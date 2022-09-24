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
import '../model/sections.dart';
import '../network/dio_helper.dart';
import '../network/end_points.dart';
import '../view/pages/token.dart';
import '../view/pages/data.dart';
import '../view/pages/Sections.dart';
part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());
  static SectionsCubit get(context) => BlocProvider.of(context);
  SectionModel ? sec ;

  void getData(){
    DioHelper.getData(url: sectionEndPoint , token: Token).then((value) {
      sec =  SectionModel.fromJson(value.data);
      print("sucsses");

      emit(Sectionsdone());
    });}}

