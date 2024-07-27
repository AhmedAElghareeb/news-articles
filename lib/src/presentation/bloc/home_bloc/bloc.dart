import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_articles/src/core/base_use_case.dart';
import 'package:news_articles/src/core/enums.dart';
import 'package:news_articles/src/domain/usecases/get_articles_usecase.dart';

import 'events.dart';
import 'states.dart';

class NewsBloc extends Bloc<NewsEvents, NewsStates> {
  final GetArticlesUseCase getArticlesUseCase;

  NewsBloc(this.getArticlesUseCase) : super(const NewsStates()) {
    on<FetchNewsEvent>(_fetchNews);
  }

  Future<void> _fetchNews(
      FetchNewsEvent event, Emitter<NewsStates> emit) async {
    final result = await getArticlesUseCase.call(const NoParameters());

    result.fold(
      (l) => emit(
        state.copyWith(
          requestState: RequestState.error,
          msgError: l.message,
        ),
      ),
      (r) => emit(
        state.copyWith(
          requestState: RequestState.loaded,
          articles: r,
        ),
      ),
    );
  }
}
