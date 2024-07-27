import 'package:news_articles/src/domain/entities/news_articles.dart';

class ArticlesModel extends Articles {
  const ArticlesModel({
    required super.title,
    required super.description,
    required super.publishedAt,
    required super.urlToImage,
  });

  factory ArticlesModel.fromJson(Map<String, dynamic> json) => ArticlesModel(
        title: json['title'] ?? "",
        description: json['description'] ?? "No Description",
        publishedAt: json['publishedAt'] ?? "",
        urlToImage: json['urlToImage'] ??
            "https://img.freepik.com/free-photo/news-newspaper-news-feed-report-information-concept_53876-167055.jpg?ga=GA1.1.1045299636.1717934139&semt=sph",
      );
}
