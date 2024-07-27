import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_articles/src/core/styles.dart';
import 'package:news_articles/src/domain/entities/news_articles.dart';
// import 'package:news_articles/src/presentation//screens/home/dummy_data/dummy.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.data,
  });

  final Articles data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(bottom: 10.h),
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsetsDirectional.only(
        bottom: 10.h,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(
            10.r,
          ),
          topEnd: Radius.circular(
            10.r,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            data.urlToImage,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 8.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: AppStyles.font16BoldBlack,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  data.description,
                  style: AppStyles.font13RegularBlack,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  data.publishedAt,
                  style: AppStyles.font12SemiBoldGrey600,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}