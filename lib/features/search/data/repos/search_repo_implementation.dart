import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/bookmodel/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplementation implements SearchRepo {
  final ApiService apiService;

  SearchRepoImplementation({required this.apiService});
  @override
  Future<Either<Failure, List<Bookmodel>>> fetchSearchBooks({
    required String searchWord,
  }) async {
    try {
      var data = await apiService.get(
        endPoint:
            'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:$searchWord',
      );
      List<Bookmodel> books = [];

      for (var item in data['items']) {
        books.add(Bookmodel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
