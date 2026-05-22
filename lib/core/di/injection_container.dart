import 'package:clean_architecture_demo/features/auth/data/data_sources/remote/auth_api_service.dart';
import 'package:clean_architecture_demo/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:clean_architecture_demo/features/auth/domain/repositories/auth_repository.dart';
import 'package:clean_architecture_demo/features/auth/domain/usecases/register.dart';
import 'package:clean_architecture_demo/features/auth/presentation/bloc/register_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  sl.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json",
        },
      ),
    ),
  );
  // api service
  sl.registerLazySingleton<AuthApiService>(() => AuthApiService(dio: sl()));
  // repository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(authApiService: sl<AuthApiService>()),
  );
   // Use Case
  sl.registerLazySingleton<RegisterUseCase>(
    () => RegisterUseCase(sl<AuthRepository>()),
  );
   // Bloc
  sl.registerFactory<RegisterBloc>(() => RegisterBloc(sl<RegisterUseCase>()));
}
