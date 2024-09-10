import 'package:bokklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:bokklyapp/core/utlis/styles.dart';
import 'package:flutter/material.dart';

import 'book_action.dart';
import 'book_rating.dart';
import 'featured_list_view_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: FeaturedListViewItem(
              imageurl: bookModel.volumeInfo.imageLinks.thumbnail),
        ),
        const SizedBox(
          height: 45,
        ),
        Text(
          "${bookModel.volumeInfo.title}",
          style: Styles.textStyle30.copyWith(
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 117.0),
          child: BookRating(
            ratingsCount: bookModel.volumeInfo.ratingsCount ?? 0,
            averageRating: bookModel.volumeInfo.averageRating ?? 0,
          ),
        ),
        const SizedBox(
          height: 37,
        ),
        const BookAction(),
      ],
    );
  }
}
