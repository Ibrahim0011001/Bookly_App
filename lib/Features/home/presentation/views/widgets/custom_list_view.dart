import 'package:bokklyapp/Features/home/presentation/manger/featured_books_cubit/cubit/featured_books_cubit.dart';
import 'package:bokklyapp/core/widgets/custom_error_satate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_list_view_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: height,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {},
                    child: FeaturedListViewItem(
                      imageurl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  ),
                );
              }),
        );
      } else if (state is FeaturedBooksFailure) {
        return const CustomErrorSatate();
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
