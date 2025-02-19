part of 'user_cubit.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  const UserLoaded(this.users);
  final List<User> users;
}

class UserError extends UserState {
  const UserError(this.message);
  final String message;
}
