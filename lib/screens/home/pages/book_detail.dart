import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  static const nameRoute = '/bookDetail';

  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.chevron_left_rounded, size: 30)),
            Text(
              'Book Detail',
              style: semiBoldText14.copyWith(
                color: blackColor,
              ),
            ),
            const Icon(Icons.share_rounded),
          ],
        ),
      );
    }

    Widget bookImage() {
      return Container(
        width: 275,
        height: 375,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/trendingbook_1.png'),
          ),
        ),
      );
    }

    Widget description() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(30),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enchantment',
                        style: semiBoldText20.copyWith(
                          color: blackColor2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        'Guy Kawasaki',
                        style: mediumText14.copyWith(
                          color: greyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  'Free Access',
                  style: mediumText14.copyWith(
                    color: greenColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              'Description',
              style: semiBoldText14.copyWith(
                color: blackColor2,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              'Enchantment, as defined by bestselling business guru Guy Kawasaki, is not about manipulating people. It transforms situations and relationships.',
              style: regularText12.copyWith(
                color: greyColor,
                height: 2,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Column(
            children: [
              header(),
              bookImage(),
              description(),
            ],
          )
        ],
      ),
    );
  }
}
