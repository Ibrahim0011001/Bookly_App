import 'package:bokklyapp/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 25,
            ),
            SizedBox(
              width: 6.3,
            ),
            Text(
              '4.8',
              style: Styles.textStyle18,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              '(245)',
              style: Styles.textStyle14,
            ),
          ],
        )
      ],
    );
  }
}
