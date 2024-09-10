import 'package:bokklyapp/Features/home/presentation/manger/newest_books_cubit/cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:bokklyapp/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
      if (state is NewestBooksSuccess) {
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: BestSellerListViewItem(
                bookModel: state.books[index],
              ),
            );
          },
        );
      } else {
        return const CircularProgressIndicator();
      }
    });
  }
}
