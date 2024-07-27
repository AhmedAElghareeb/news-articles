import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_articles/src/data/data_source/news_data_source.dart';
import 'package:news_articles/src/data/repository_implentations/news_repo_implementation.dart';
import 'package:news_articles/src/domain/repository/repository.dart';
import 'package:news_articles/src/domain/usecases/get_articles_usecase.dart';
import 'package:news_articles/src/presentation/bloc/home_bloc/bloc.dart';


final sl = GetIt.instance;

void init () {
  //register dio instance "lazy singleton for creating instance for one time"
  sl.registerLazySingleton(() => Dio());

  //register data source "lazy singleton for creating instance for one time"
  sl.registerLazySingleton<NewsDataSource>(() => NewsDataSourceImpl(sl()));

  //register repository "lazy singleton for creating instance for one time"
  sl.registerLazySingleton<NewsRepository>(() => NewsRepoImplementation(sl()));

  //register useCase "lazy singleton for creating instance for one time"
  sl.registerLazySingleton(() => GetArticlesUseCase(sl()));

  //register blocs
  sl.registerFactory(() => NewsBloc(sl()));
}