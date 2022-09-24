import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'our_partener_state.dart';

class ourpartenerCubit extends Cubit<ourPartenerState> {
  ourpartenerCubit() : super(ourPartenerInitial());
}
