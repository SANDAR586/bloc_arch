part of 'second_b_bloc.dart';

abstract class SecondBState extends Equatable {
  const SecondBState();  

  @override
  List<Object> get props => [];
}
class SecondBInitial extends SecondBState {}
class SecondBFetched extends SecondBState {
   final List<UserModel> users;
  const SecondBFetched(this.users);
}
class SecondBError extends SecondBState {
  final String message;
  const SecondBError({required this.message});
}
