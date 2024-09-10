import 'package:bokklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:bokklyapp/Features/home/data/models/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'smilar_books_cubit_state.dart';

class SmilarBooksCubitCubit extends Cubit<SmilarBooksCubitState> {
  SmilarBooksCubitCubit(this.homeRepo) : super(SmilarBooksCubitInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(catagory: category);
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
