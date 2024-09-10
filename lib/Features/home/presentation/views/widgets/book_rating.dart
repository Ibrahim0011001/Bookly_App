import 'package:bokklyapp/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    required this.averageRating,
    required this.ratingsCount,
  });
  final num averageRating;
  final int ratingsCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 25,
            ),
            const SizedBox(
              width: 6.3,
            ),
            Text(
              '$averageRating',
              style: Styles.textStyle18,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              '($ratingsCount)',
              style: Styles.textStyle14,
            ),
          ],
        )
      ],
    );
  }
}
