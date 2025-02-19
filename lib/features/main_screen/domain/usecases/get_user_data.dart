import 'package:dartz/dartz.dart';
import 'package:my_app/core/errors/errors.dart';
import 'package:my_app/core/usecases/usecases.dart';
import 'package:my_app/features/main_screen/data/models/user_model.dart';
import 'package:my_app/features/main_screen/domain/repositories/base_user_repository.dart';

class GetUserDataUseCase extends BaseUseCase<User> {
  GetUserDataUseCase(this.baseUserRepository);
  final BaseUserRepository baseUserRepository;

  @override
  Future<Either<List<User>, AppError>> call() =>
      baseUserRepository.getUserData();
}
