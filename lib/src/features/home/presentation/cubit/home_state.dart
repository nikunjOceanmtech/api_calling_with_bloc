part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeLoadingState extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeLoadedState extends HomeState {
  final List<HomeEntities> newsDataList;

  const HomeLoadedState({required this.newsDataList});

  HomeLoadedState copyWith({List<HomeEntities>? newsDataList}) {
    return HomeLoadedState(
      newsDataList: newsDataList ?? this.newsDataList,
    );
  }

  @override
  List<Object> get props => [newsDataList];
}

class HomeErrorState extends HomeState {
  final AppErrorType appErrorType;
  final String errorMassage;

  const HomeErrorState({required this.appErrorType, required this.errorMassage});

  @override
  List<Object> get props => [];
}
