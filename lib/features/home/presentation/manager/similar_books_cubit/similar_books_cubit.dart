import 'package:bookly_app/features/home/data/models/bookmodel/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit.SimilarBooksCubit(this.homeRepo)
    : super(SimilarBooksCubitInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksCubitLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) {
        emit(SimilarBooksCubitFailure(failure.errorMessage));
      },
      (books) {
        emit(SimilarBooksCubitSuccess(books));
      },
    );
  }
}
