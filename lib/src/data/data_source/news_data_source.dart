import 'package:dio/dio.dart';
import 'package:news_articles/src/core/constants.dart';
import 'package:news_articles/src/core/error_msg_model.dart';
import 'package:news_articles/src/core/exception.dart';
import 'package:news_articles/src/data/model/articles_model.dart';
import 'package:news_articles/src/domain/entities/news_articles.dart';

abstract class NewsDataSource {
  Future<List<Articles>> getNews();
}

class NewsDataSourceImpl extends NewsDataSource {
  final Dio dio;

  NewsDataSourceImpl(this.dio);

  @override
  Future<List<Articles>> getNews() async {
    final response = await dio.get(
      AppConst.baseUrl,
      queryParameters: {
        "apiKey": AppConst.apiKey,
        "country": AppConst.queryCountry,
      },
    );

    if (response.statusCode == 200) {
      return List<ArticlesModel>.from(
        (response.data['articles']).map(
          (e) => ArticlesModel.fromJson(e),
        ),
      ).toList();
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(
          response.data,
        ),
      );
    }
  }
}
