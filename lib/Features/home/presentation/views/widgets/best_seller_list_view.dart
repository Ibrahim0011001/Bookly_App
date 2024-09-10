import 'package:bokklyapp/Features/home/presentation/manger/newest_books_cubit/cubit/newest_books_cubit.dart';
import 'package:bokklyapp/core/widgets/custom_error_satate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view_item.dart';

class BestListView extends StatelessWidget {
  const BestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BestSellerListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return const CustomErrorSatate();
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
