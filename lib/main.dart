import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_articles/app.dart';
import 'package:news_articles/observer.dart';
import 'di.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  di.init();
  await ScreenUtil.ensureScreenSize();
  runApp(
    const NewsArticles(),
  );
}
