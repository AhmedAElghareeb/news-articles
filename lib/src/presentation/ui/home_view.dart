import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_articles/src/presentation/dummy_data/dummy.dart';
import 'package:news_articles/src/presentation/widgets/item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latest News"),
      ),
      body: ListView.builder(
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: 10.w,
          vertical: 10.h,
        ),
        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          final data = dummyData[index];
          return CardItem(
            data: data,
          );
        },
      ),
    );
  }
}
