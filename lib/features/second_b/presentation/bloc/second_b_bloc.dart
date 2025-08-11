import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'second_b_event.dart';
part 'second_b_state.dart';

class SecondBBloc extends Bloc<SecondBEvent, SecondBState> {
  SecondBBloc() : super(SecondBInitial()) {
    on<SecondBEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
