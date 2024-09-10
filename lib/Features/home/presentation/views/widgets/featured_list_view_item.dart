import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({
    super.key,
    required this.imageurl,
  });
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(imageurl)))));
  }
}
