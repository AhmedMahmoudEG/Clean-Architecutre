import 'package:my_app/core/network/apicaller.dart';
import 'package:my_app/features/main_screen/data/data_sources/user_data_source.dart';
import 'package:my_app/features/main_screen/data/models/user_model.dart';

class UserDataRemote implements BaseDataSource {
  @override
  Future<List<User>> getUserData() async {
    final response =
        await Apicaller().getData('https://jsonplaceholder.typicode.com/users');
    final data = response.data;

    if (data is List) {
      return data
          .map((user) => User.fromJson(user as Map<String, dynamic>))
          .toList();
    } else {
      throw const FormatException('Unexpected response format');
    }
  }
}
