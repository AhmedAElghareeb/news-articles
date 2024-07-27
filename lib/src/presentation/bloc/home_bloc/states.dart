import 'package:equatable/equatable.dart';
import 'package:news_articles/src/core/enums.dart';
import 'package:news_articles/src/domain/entities/news_articles.dart';

class NewsStates extends Equatable{
  final List<Articles> articles;
  final RequestState requestState;
  final String msgError;
  const NewsStates({
    this.articles = const [],
    this.requestState = RequestState.loading,
    this.msgError = "",
});

  NewsStates copyWith({
    List<Articles>? articles,
    RequestState? requestState,
    String? msgError,
}) {
    return NewsStates(
      articles: articles ?? this.articles,
      requestState: requestState ?? this.requestState,
      msgError: msgError ?? this.msgError
    );
  }

  @override
  List<Object?> get props => [
    articles,
    requestState,
    msgError
  ];

}