import 'package:dartz/dartz.dart';
import 'package:my_app/core/errors/errors.dart';
import 'package:my_app/features/main_screen/data/models/user_model.dart';

// ignore: one_member_abstracts
abstract class BaseUserRepository {
  Future<Either<List<User>, AppError>> getUserData();
}
