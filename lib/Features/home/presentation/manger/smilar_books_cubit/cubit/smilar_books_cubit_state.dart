part of 'smilar_books_cubit_cubit.dart';

sealed class SmilarBooksCubitState extends Equatable {
  const SmilarBooksCubitState();

  @override
  List<Object> get props => [];
}

final class SmilarBooksCubitInitial extends SmilarBooksCubitState {}

class SimilarBooksFailure extends SmilarBooksCubitState {
  final String errMessage;

  const SimilarBooksFailure(this.errMessage);
}

class SimilarBooksSuccess extends SmilarBooksCubitState {
  final List<BookModel> books;

  const SimilarBooksSuccess(this.books);
}

class SimilarBooksLoading extends SmilarBooksCubitState {}
