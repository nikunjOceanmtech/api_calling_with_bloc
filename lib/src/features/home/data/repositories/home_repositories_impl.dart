import 'package:api_calling_with_bloc/src/features/home/data/datasources/home_datasources.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/entities/app_error.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/entities/home_entities.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/entities/parms/no_params.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/repositories/home_repositories.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoriesImpl extends HomeRepositories {
  final HomeDataSource homeDataSource;

  HomeRepositoriesImpl({required this.homeDataSource});

  @override
  Future<Either<AppError, List<HomeEntities>>> getNewsData({NoParams? noParams}) async {
    try {
      final result = await homeDataSource.getNewsData();
      return result;
    } on Exception {
      throw Exception('Something goes wrong.');
    }
  }
}
