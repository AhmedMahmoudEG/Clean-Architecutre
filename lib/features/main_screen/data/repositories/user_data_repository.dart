import 'package:dartz/dartz.dart';
import 'package:my_app/core/errors/errors.dart';
import 'package:my_app/features/main_screen/data/data_sources/user_data_source.dart';
import 'package:my_app/features/main_screen/data/models/user_model.dart';

import 'package:my_app/features/main_screen/domain/repositories/base_user_repository.dart';

class UserDataRepository implements BaseUserRepository {
  UserDataRepository(this._baseUserDataSource);

  final BaseDataSource _baseUserDataSource;
  @override
  Future<Either<List<User>, AppError>> getUserData() async {
    try {
      final data = await _baseUserDataSource.getUserData();
      return left(data); // ✅ Now correctly returning List<User>
    } catch (e) {
      return right(AppError(e.toString()));
    }
  }
}
