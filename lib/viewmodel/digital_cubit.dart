import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'digital_state.dart';

class DigitalCubit extends Cubit<DigitalState> {
  DigitalCubit() : super(DigitalInitial());
}
