import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_app/features/main_screen/data/models/user_model.dart';
import 'package:my_app/features/main_screen/domain/usecases/get_user_data.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.getUserDataUseCase) : super(UserInitial());
  final GetUserDataUseCase getUserDataUseCase;

  Future<void> fetchUserData() async {
    emit(UserLoading());
    try {
      final result = await getUserDataUseCase.call();
      result.fold(
        (users) {
          if (users.isNotEmpty) {
            emit(UserLoaded(users)); // Emit all users
          } else {
            emit(const UserError('No users found'));
          }
        },
        (failure) {
          emit(UserError(failure.message));
        },
      );
    } catch (e) {
      emit(UserError('Something went wrong: $e'));
    }
  }
}
