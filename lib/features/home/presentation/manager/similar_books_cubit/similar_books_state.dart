part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksCubitInitial extends SimilarBooksState {}

final class SimilarBooksCubitLoading extends SimilarBooksState {}

final class SimilarBooksCubitSuccess extends SimilarBooksState {
  final List<Bookmodel> books;

  const SimilarBooksCubitSuccess(this.books);
}

final class SimilarBooksCubitFailure extends SimilarBooksState {
  final String errorMessage;

  const SimilarBooksCubitFailure(this.errorMessage);
}
