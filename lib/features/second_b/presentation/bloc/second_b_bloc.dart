import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:testing_arch/core/base/di.dart';
import 'package:testing_arch/core/network/api_repository.dart';
import 'package:testing_arch/features/second_b/data/models/user_model.dart';

part 'second_b_event.dart';
part 'second_b_state.dart';

class SecondBBloc extends Bloc<SecondBEvent, SecondBState> {
  SecondBBloc() : super(SecondBInitial()) {
    // this is where we can initialize the bloc and listen to events
    on<FetchUsers>((event, emit) async {
     await  _onFetchData(event, emit);
    });

    add(FetchUsers());
  }

  final ApiRepository apiRepository = instance<ApiRepository>();

  Future<void> _onFetchData(
    FetchUsers event,
    Emitter<SecondBState> emit,
  ) async {
    emit(SecondBInitial()); // loading state
    try {
      final users = await apiRepository.getUsers();
      emit(SecondBFetched(users));
    } catch (error) {
      emit(SecondBError(message: error.toString()));
    }
  }
}
