import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/bookmodel/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_cubit_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksCubitInitial());

  final HomeRepo homeRepo;

  Future<void> featchFeaturedBooks() async {
    emit(FeaturedBooksCubitLoofing());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeaturedBooksCubitFailure(errorMessage: failure.errorMessage));
      },
      (books) {
        emit(FeaturedBooksCubitSuccess(books: books));
      },
    );
  }
}
