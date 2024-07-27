import 'package:equatable/equatable.dart';

class Articles extends Equatable{
  final String title;
  final String description;
  final String publishedAt;
  final String urlToImage;

  const Articles({
    required this.title,
    required this.description,
    required this.publishedAt,
    required this.urlToImage,
  });

  @override
  List<Object?> get props => [
    title,
    description,
    publishedAt,
    urlToImage
  ];
}
