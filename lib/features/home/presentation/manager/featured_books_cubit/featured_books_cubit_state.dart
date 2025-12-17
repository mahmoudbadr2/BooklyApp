part of 'featured_books_cubit_cubit.dart';

sealed class FeaturedBooksCubitState extends Equatable {
  const FeaturedBooksCubitState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksCubitInitial extends FeaturedBooksCubitState {}

final class FeaturedBooksCubitLoofing extends FeaturedBooksCubitState {}

final class FeaturedBooksCubitFailure extends FeaturedBooksCubitState {
  final String errorMessage;

  const FeaturedBooksCubitFailure({required this.errorMessage});
}

final class FeaturedBooksCubitSuccess extends FeaturedBooksCubitState {
  final List<Bookmodel> books;

  const FeaturedBooksCubitSuccess({required this.books});
}
