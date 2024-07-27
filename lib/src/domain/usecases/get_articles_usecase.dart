import 'package:dartz/dartz.dart';
import 'package:news_articles/src/core/base_use_case.dart';
import 'package:news_articles/src/core/failure.dart';
import 'package:news_articles/src/domain/entities/news_articles.dart';
import 'package:news_articles/src/domain/repository/repository.dart';

class GetArticlesUseCase extends BaseUseCase<List<Articles>, NoParameters>{
  final NewsRepository newsRepository;

  GetArticlesUseCase(this.newsRepository);

  @override
  Future<Either<Failure, List<Articles>>> call(NoParameters parameters) async {
    return await newsRepository.getNews();
  }
}