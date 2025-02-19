import 'package:my_app/app/app.dart';
import 'package:my_app/bootstrap.dart';
import 'package:my_app/core/services/dependency_injection.dart';

void main() {
  bootstrap(() async {
    // ignore: unused_local_variable
    final di = DependencyInjection()..init();
    return const App();
  });
}
