import 'package:dartz/dartz.dart';
import 'package:news_articles/src/core/failure.dart';
import 'package:news_articles/src/domain/entities/news_articles.dart';

abstract class NewsRepository {
  Future<Either<Failure, List<Articles>>> getNews();
}