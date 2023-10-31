import 'package:api_calling_with_bloc/src/core/api_client.dart';
import 'package:api_calling_with_bloc/src/features/home/data/datasources/home_datasources.dart';
import 'package:api_calling_with_bloc/src/features/home/data/repositories/home_repositories_impl.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/repositories/home_repositories.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/usecases/home_usecases.dart';
import 'package:api_calling_with_bloc/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

final getItInstance = GetIt.I;

Future init() async {
  getItInstance.registerLazySingleton<Client>(() => Client());
  getItInstance.registerLazySingleton<ApiClient>(() => ApiClient(getItInstance()));

  // Analytics Property

  //Data source Dependency
  getItInstance.registerLazySingleton<HomeDataSource>(() => HomeDataSourceImpl(client: getItInstance()));

  //Data Repository Dependency
  getItInstance.registerLazySingleton<HomeRepositories>(() => HomeRepositoriesImpl(homeDataSource: getItInstance()));

  //Usecase Dependency
  getItInstance.registerLazySingleton<HomeUseCase>(() => HomeUseCase(homeRepositories: getItInstance()));

  //Bloc Dependency
  // getItInstance.registerFactory(() => SettingPageBloc(loadingCubit: getItInstance()));

  //Cubit Dependency
  getItInstance.registerFactory<HomeCubit>(() => HomeCubit(homeUseCase: getItInstance()));

  //Theme Dependency
  // getItInstance.registerLazySingleton<GetPreferredTheme>(() => GetPreferredTheme(appRepository: getItInstance()));
}
