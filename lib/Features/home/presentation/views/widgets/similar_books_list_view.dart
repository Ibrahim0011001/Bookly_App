import 'package:bokklyapp/Features/home/presentation/manger/smilar_books_cubit/cubit/smilar_books_cubit_cubit.dart';
import 'package:bokklyapp/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bokklyapp/core/widgets/custom_error_satate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SmilarBooksCubitCubit, SmilarBooksCubitState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: FeaturedListViewItem(
                      imageurl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return const CustomErrorSatate();
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
