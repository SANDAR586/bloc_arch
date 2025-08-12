part of 'second_b_bloc.dart';

abstract class SecondBEvent extends Equatable {
  const SecondBEvent();

  @override
  List<Object> get props => [];
}

class FetchUsers extends SecondBEvent {
  const FetchUsers();
}
