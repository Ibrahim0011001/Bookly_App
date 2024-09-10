import 'package:bokklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:bokklyapp/Features/home/data/models/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchfeaturedbooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (l) => emit(FeaturedBooksFailure(l.errMessage)),
      (r) => emit(FeaturedBooksSuccess(r)),
    );
  }
}
