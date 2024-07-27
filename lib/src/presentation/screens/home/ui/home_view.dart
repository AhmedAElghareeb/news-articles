import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_articles/src/core/enums.dart';
import 'package:news_articles/src/core/styles.dart';
import 'package:news_articles/src/presentation/bloc/home_bloc/bloc.dart';
import 'package:news_articles/src/presentation/bloc/home_bloc/events.dart';
import 'package:news_articles/src/presentation/bloc/home_bloc/states.dart';
import 'package:news_articles/src/presentation/screens/home/widgets/item.dart';
import 'package:news_articles/di.dart' as di;
import 'package:news_articles/src/presentation/screens/home/widgets/shimmer_loading.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<NewsBloc>()..add(FetchNewsEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Latest News"),
        ),
        body: BlocBuilder<NewsBloc, NewsStates>(
          buildWhen: (previous, current) => previous.articles != current.articles,
          builder: (context, state) {
            switch(state.requestState) {
              case RequestState.loading:
              return buildLoading();
              case RequestState.loaded:
                return buildArticlesListView(state.articles);
              case RequestState.error:
                return buildErrorState(state.msgError);
            }
          },
        ),
      ),
    );
  }

  //error state widget
  Widget buildErrorState(state) => Center(
        child: Text(
          state.msgError,
          style: AppStyles.font12SemiBoldGrey600,
        ),
      );

  //articles list view widget
  Widget buildArticlesListView(state) {
    return ListView.builder(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      itemCount: state.length,
      itemBuilder: (context, index) {
        final data = state[index];
        return CardItem(
          data: data,
        );
      },
    );
  }

  //loading state widget
  Widget buildLoading() => const ArticlesShimmerLoading();
}
