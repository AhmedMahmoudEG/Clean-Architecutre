import 'package:my_app/features/main_screen/data/models/user_model.dart';

// ignore: one_member_abstracts
abstract class BaseDataSource {
  Future<List<User>> getUserData();
}
