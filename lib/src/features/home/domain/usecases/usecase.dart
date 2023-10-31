import 'package:api_calling_with_bloc/src/features/home/domain/entities/app_error.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Params> {
  Future<Either<AppError, Type>> call(Params params);
}
