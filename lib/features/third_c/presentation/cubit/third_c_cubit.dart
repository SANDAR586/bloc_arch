import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'third_c_state.dart';

class ThirdCCubit extends Cubit<ThirdCState> {
  ThirdCCubit() : super(ThirdCInitial());
}
