import 'package:bokklyapp/Features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:bokklyapp/core/utlis/styles.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const CustomBookDetailsAppbar(),
                const BookDetailsSection(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle18,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomListView(
                  height: MediaQuery.of(context).size.height * .15,
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
