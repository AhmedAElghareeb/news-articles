import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_articles/src/core/theme.dart';
import 'package:news_articles/src/presentation/screens/home/ui/home_view.dart';

class NewsArticles extends StatelessWidget {
  const NewsArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(350, 812),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        builder: (context, child) => const HomeView(),
      ),
    );
  }
}
