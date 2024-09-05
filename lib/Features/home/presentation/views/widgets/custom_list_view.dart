import 'package:flutter/material.dart';

import 'featured_list_view_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
