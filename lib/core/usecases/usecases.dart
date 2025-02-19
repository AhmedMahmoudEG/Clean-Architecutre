import 'package:dartz/dartz.dart';
import 'package:my_app/core/errors/errors.dart';

// ignore_for_file: one_memeber_abstracts
// ignore: one_member_abstracts
abstract class BaseUseCase<T> {
  Future<Either<List<T>, AppError>> call();
}
