import 'package:bokklyapp/core/utlis/styles.dart';
import 'package:flutter/material.dart';

import 'book_action.dart';
import 'book_rating.dart';
import 'featured_list_view_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: const FeaturedListViewItem(),
        ),
        const SizedBox(
          height: 45,
        ),
        Text(
          'The Jungle Book',
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
            'Redyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 117.0),
          child: BookRating(),
        ),
        const SizedBox(
          height: 37,
        ),
        const BookAction(),
      ],
    );
  }
}
