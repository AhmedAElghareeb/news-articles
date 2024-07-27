import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:news_articles/src/core/failure.dart';

abstract class BaseUseCase<T, Parameters> {
  Future<Either<Failure, T>> call(Parameters parameters);
}

class NoParameters extends Equatable {
  const NoParameters();

  @override
  List<Object?> get props => [];
}