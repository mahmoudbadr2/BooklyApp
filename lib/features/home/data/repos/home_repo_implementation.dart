import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/bookmodel/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo {
  @override
  Future<Either<Failure, List<Bookmodel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
