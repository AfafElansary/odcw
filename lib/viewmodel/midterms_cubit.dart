import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'midterms_state.dart';

class MidtermsCubit extends Cubit<MidtermsState> {
  MidtermsCubit() : super(MidtermsInitial());
}
