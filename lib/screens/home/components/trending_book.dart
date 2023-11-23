import 'package:e_book_app/models/book.dart';
import 'package:flutter/material.dart';
import 'package:e_book_app/themes.dart';

class TrendingBook extends StatelessWidget {
  const TrendingBook({
    Key? key,
    required this.info,
  }) : super(key: key);

  final BookList info;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 160,
          width: 110,
          margin: const EdgeInsets.only(top: 12, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(info.imageUrl),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          info.writers,
          style: mediumText12.copyWith(color: greyColor),
        ),
        Text(
          info.title,
          style: semiBoldText14.copyWith(color: blackColor),
        ),
      ],
    );
  }
}
