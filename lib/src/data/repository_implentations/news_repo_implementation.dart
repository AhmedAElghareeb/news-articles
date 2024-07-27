import 'package:dartz/dartz.dart';
import 'package:news_articles/src/core/exception.dart';
import 'package:news_articles/src/core/failure.dart';
import 'package:news_articles/src/data/data_source/news_data_source.dart';
import 'package:news_articles/src/domain/entities/news_articles.dart';
import 'package:news_articles/src/domain/repository/repository.dart';

class NewsRepoImplementation extends NewsRepository {
  final NewsDataSource newsDataSource;

  NewsRepoImplementation(this.newsDataSource);

  @override
  Future<Either<Failure, List<Articles>>> getNews() async {
    final result = await newsDataSource.getNews();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
          failure.errorMessageModel.statusMessage,
        ),
      );
    }
  }
}
