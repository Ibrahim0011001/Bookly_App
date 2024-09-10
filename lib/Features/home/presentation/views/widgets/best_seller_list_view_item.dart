import 'package:bokklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:bokklyapp/core/utlis/app_router.dart';
import 'package:bokklyapp/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              bookModel.volumeInfo.imageLinks.thumbnail)))),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      // 'Harry Potter and The Goblet of Fire',
                      "${bookModel.volumeInfo.title}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    // 'J.K Rowling',
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRating(
                        ratingsCount: bookModel.volumeInfo.ratingsCount ?? 0,
                        averageRating: bookModel.volumeInfo.averageRating ?? 0,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
