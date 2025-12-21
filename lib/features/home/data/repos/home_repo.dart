import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/bookmodel/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Bookmodel>>> fetchNewestBooks();
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<Bookmodel>>> fetchSimilarBooks({
    required String category,
  });
}
