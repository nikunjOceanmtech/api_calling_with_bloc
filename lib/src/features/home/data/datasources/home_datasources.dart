// ignore_for_file: unrelated_type_equality_checks

import 'dart:io';

import 'package:api_calling_with_bloc/src/constant/api_constatnts.dart';
import 'package:api_calling_with_bloc/src/core/api_client.dart';
import 'package:api_calling_with_bloc/src/core/unathorised_exception.dart';
import 'package:api_calling_with_bloc/src/features/home/data/models/home_model.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/entities/app_error.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/entities/home_entities.dart';
import 'package:api_calling_with_bloc/src/features/home/domain/entities/parms/no_params.dart';
import 'package:dartz/dartz.dart';

abstract class HomeDataSource {
  Future<Either<AppError, List<HomeEntities>>> getNewsData({NoParams? noParams});
}

class HomeDataSourceImpl extends HomeDataSource {
  final ApiClient client;

  HomeDataSourceImpl({required this.client});

  @override
  Future<Either<AppError, List<HomeEntities>>> getNewsData({NoParams? noParams}) async {
    try {
      final productData = await client.get(
          'https://newsapi.org/v2/top-headlines?country=in&category=sports&apiKey=3fe326505cb441de91d6f816494b739a',
          header: ApiConstatnts().headers);
      HomeModel homeModel = HomeModel.fromJson(productData);
      if (homeModel.status == 'ok') {
        List<HomeEntities> list = homeModel.articles!
            .map(
              (e) => HomeEntities(
                author: e.author ?? "",
                title: e.title ?? "",
                description: e.description ?? "",
                url: e.url ?? "",
                urlToImage: e.urlToImage ?? "",
                publishedAt: e.publishedAt ?? DateTime.now(),
                content: e.content ?? "",
              ),
            )
            .toList();

        return Right(list);
      } else if (homeModel.status == 404) {
        return Left(
          AppError(
            errorType: AppErrorType.data,
            errorMessage: '(Error:100 & ${homeModel.status.toString()})',
          ),
        );
      } else if (homeModel.status == 406 || homeModel.status == 405) {
        return Left(
          AppError(
            errorType: AppErrorType.api,
            errorMessage: '(Error:100 & ${homeModel.status.toString()})',
          ),
        );
      } else {
        return Left(AppError(errorType: AppErrorType.api, errorMessage: homeModel.status!));
      }
    } on UnauthorisedException catch (_) {
      return const Left(AppError(errorType: AppErrorType.unauthorised, errorMessage: "Un-Authorised"));
    } on SocketException catch (e) {
      if (e.toString().contains('ClientException with SocketException')) {
        return const Left(
          AppError(
            errorType: AppErrorType.network,
            errorMessage: "Please check your internet connection, try again!!!\n(Error:102)",
          ),
        );
      } else if (e.toString().contains('ClientException') && e.toString().contains('Software')) {
        return const Left(
          AppError(
            errorType: AppErrorType.network,
            errorMessage: "Network Change Detected, Please try again!!!\n(Error:103)",
          ),
        );
      }
      return const Left(
        AppError(
          errorType: AppErrorType.network,
          errorMessage: "Something went wrong, try again!\nSocket Problem (Error:104)",
        ),
      );
    } catch (exception) {
      return const Left(
        AppError(errorType: AppErrorType.app, errorMessage: "Something went wrong, try again!\n(Error:105)"),
      );
    }
  }
}
