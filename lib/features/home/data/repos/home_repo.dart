import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/bookmodel/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HommeRepo {
  Future<Either<Failure, List<Bookmodel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedBooks();
}
