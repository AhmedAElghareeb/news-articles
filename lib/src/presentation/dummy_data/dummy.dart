import 'package:flutter/material.dart';

class DummyData {
  final String title;
  final String desc;
  final String date;
  final ImageProvider image;

  DummyData({
    required this.title,
    required this.desc,
    required this.date,
    required this.image,
  });
}

List<DummyData> dummyData = [
  DummyData(
    title: "title : Hello from title. There are many news you can check them now.",
    desc: "desc : Description Description Description Description Description Description Description",
    date: "date : 26 July, 2024 at 5:38 PM",
    image: const NetworkImage(
      "https://img.freepik.com/free-photo/close-up-concentrated-executive-reading-news_1098-2991.jpg?ga=GA1.1.1045299636.1717934139&semt=sph",
    ),
  ),
  DummyData(
    title: "title : Hello from title. There are many news you can check them now.",
    desc: "desc : Description Description Description Description Description Description Description",
    date: "date : 26 July, 2024 at 5:38 PM",
    image: const NetworkImage(
      "https://img.freepik.com/free-photo/worker-reading-news-with-tablet_1162-83.jpg?ga=GA1.1.1045299636.1717934139&semt=sph",
    ),
  ),
  DummyData(
    title: "title : Hello from title. There are many news you can check them now.",
    desc: "desc : Description Description Description Description Description Description Description",
    date: "date : 26 July, 2024 at 5:38 PM",
    image: const NetworkImage(
      "https://img.freepik.com/free-photo/man-reading-newspaper_53876-89052.jpg?ga=GA1.1.1045299636.1717934139&semt=sph",
    ),
  ),
  DummyData(
    title: "title : Hello from title. There are many news you can check them now.",
    desc: "desc : Description Description Description Description Description Description Description",
    date: "date : 26 July, 2024 at 5:38 PM",
    image: const NetworkImage(
      "https://img.freepik.com/free-photo/global-connections_53876-89039.jpg?ga=GA1.1.1045299636.1717934139&semt=sph",
    ),
  ),
  DummyData(
    title: "title : Hello from title. There are many news you can check them now.",
    desc: "desc : Description Description Description Description Description Description Description",
    date: "date : 26 July, 2024 at 5:38 PM",
    image: const NetworkImage(
      "https://img.freepik.com/free-photo/news-newspaper-news-feed-report-information-concept_53876-167055.jpg?ga=GA1.1.1045299636.1717934139&semt=sph",
    ),
  ),
  DummyData(
    title: "title : Hello from title. There are many news you can check them now.",
    desc: "desc : Description Description Description Description Description Description Description",
    date: "date : 26 July, 2024 at 5:38 PM",
    image: const NetworkImage(
      "https://img.freepik.com/free-photo/newspaper-background-concept_23-2149501565.jpg?ga=GA1.1.1045299636.1717934139&semt=sph",
    ),
  ),
];
