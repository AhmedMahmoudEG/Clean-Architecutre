import 'package:get_it/get_it.dart';
import 'package:my_app/features/main_screen/data/data_sources/user_data_remote.dart';
import 'package:my_app/features/main_screen/data/data_sources/user_data_source.dart';
import 'package:my_app/features/main_screen/data/repositories/user_data_repository.dart';
import 'package:my_app/features/main_screen/domain/repositories/base_user_repository.dart';
import 'package:my_app/features/main_screen/domain/usecases/get_user_data.dart';

final s1 = GetIt.instance;

class DependencyInjection {
  void init() {
    initHome();
  }

  void initHome() {
    // init repositories
    s1
      ..registerLazySingleton<BaseUserRepository>(
        () => UserDataRepository(s1()),
      )

      // init use cases
      ..registerLazySingleton<GetUserDataUseCase>(
        () => GetUserDataUseCase(s1()),
      )

      // datasources
      ..registerLazySingleton<BaseDataSource>(
        UserDataRemote.new,
      );
  }
}
