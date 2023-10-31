import 'package:api_calling_with_bloc/src/features/home/domain/entities/app_error.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/entities/home_entities.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/entities/parms/no_params.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepositories {
  Future<Either<AppError, List<HomeEntities>>> getNewsData({NoParams? noParams});
}
