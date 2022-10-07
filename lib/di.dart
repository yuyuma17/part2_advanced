import 'package:get_it/get_it.dart';

import 'core/remote/api_client.dart';
import 'core/remote/data_stores/post_remote_data_store.dart';
import 'core/repository/post_repository.dart';

DI di = DI();

class DI {
  void setup() {
    final getIt = GetIt.instance;

    /// API
    getIt.registerSingleton<ApiClient>(ApiClient());
    getIt.registerLazySingleton<PostRemoteDataStore>(
      () => PostRemoteDataStore(getIt.get<ApiClient>().client),
    );

    /// Repository
    getIt.registerLazySingleton<PostRepository>(() => PostRepository());
  }
}
