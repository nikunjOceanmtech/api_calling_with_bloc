import 'package:api_calling_with_bloc/src/features/home/domain/entities/app_error.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/entities/home_entities.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/entities/parms/no_params.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/usecases/home_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeUseCase homeUseCase;
  HomeCubit({required this.homeUseCase}) : super(HomeLoadingState());

  Future<void> loadNewsData() async {
    Either<AppError, List<HomeEntities>> response = await homeUseCase(NoParams());
    response.fold(
      (error) {
        emit(HomeErrorState(appErrorType: AppErrorType.api, errorMassage: "$error"));
      },
      (List<HomeEntities> data) {
        emit(HomeLoadedState(newsDataList: data));
      },
    );
  }
}
