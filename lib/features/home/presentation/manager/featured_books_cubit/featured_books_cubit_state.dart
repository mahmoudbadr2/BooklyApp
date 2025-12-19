part of 'featured_books_cubit_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksCubitInitial extends FeaturedBooksState {}

final class FeaturedBooksCubitLoofing extends FeaturedBooksState {}

final class FeaturedBooksCubitFailure extends FeaturedBooksState {
  final String errorMessage;

  const FeaturedBooksCubitFailure({required this.errorMessage});
}

final class FeaturedBooksCubitSuccess extends FeaturedBooksState {
  final List<Bookmodel> books;

  const FeaturedBooksCubitSuccess({required this.books});
}
