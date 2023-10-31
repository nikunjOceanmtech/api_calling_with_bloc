import 'package:api_calling_with_bloc/src/features/home/domain/entities/app_error.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/entities/home_entities.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/entities/parms/no_params.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/repositories/home_repositories.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/usecases/usecase.dart';
import 'package:dartz/dartz.dart';

class HomeUseCase extends UseCase<List<HomeEntities>, NoParams> {
  final HomeRepositories homeRepositories;
  HomeUseCase({required this.homeRepositories});

  @override
  Future<Either<AppError, List<HomeEntities>>> call(NoParams params) async {
    return await homeRepositories.getNewsData(noParams: params);
  }
}
