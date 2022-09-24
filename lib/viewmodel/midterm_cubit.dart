import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'midterm_state.dart';

class MidtermCubit extends Cubit<MidtermState> {
  MidtermCubit() : super(MidtermInitial());
}
