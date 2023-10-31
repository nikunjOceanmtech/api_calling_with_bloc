import 'package:api_calling_with_bloc/src/di/get_it.dart';
import 'package:api_calling_with_bloc/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeCubit homeCubit;

  @override
  void initState() {
    homeCubit = getItInstance<HomeCubit>();
    homeCubit.loadNewsData();
    super.initState();
  }

  @override
  void dispose() {
    homeCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder(
          bloc: homeCubit,
          builder: (context, state) {
            if (state is HomeLoadedState) {
              return ListView.builder(
                itemCount: state.newsDataList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      state.newsDataList[index].title,
                    ),
                    subtitle: Text("${state.newsDataList[index].publishedAt}"),
                  );
                },
              );
            } else if (state is HomeErrorState) {
              return Center(
                child: Text(state.errorMassage),
              );
            } else if (state is HomeLoadingState) {
              return const Center(child: CircularProgressIndicator());
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
