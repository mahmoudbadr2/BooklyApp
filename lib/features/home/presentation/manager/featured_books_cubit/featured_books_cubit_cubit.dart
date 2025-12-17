import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/bookmodel/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_cubit_state.dart';

class FeaturedBooksCubitCubit extends Cubit<FeaturedBooksCubitState> {
  FeaturedBooksCubitCubit() : super(FeaturedBooksCubitInitial());
}
