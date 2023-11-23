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

    Widget infoDescription() {
      return Container(
        height: 60,
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
            color: greyColorInfo, borderRadius: BorderRadius.circular(9)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Rating',
                  style: mediumText10.copyWith(color: dividerColor),
                ),
                const SizedBox(height: 2),
                Text(
                  '4.8',
                  style: semiBoldText12.copyWith(color: blackColor2),
                ),
              ],
            ),
            VerticalDivider(
              color: dividerColor,
              thickness: 1,
            ),
            Column(
              children: [
                Text(
                  'Number of pages',
                  style: mediumText10.copyWith(color: dividerColor),
                ),
                const SizedBox(height: 2),
                Text(
                  '180 Pages',
                  style: semiBoldText12.copyWith(color: blackColor2),
                ),
              ],
            ),
            VerticalDivider(
              color: dividerColor,
              thickness: 1,
            ),
            Column(
              children: [
                Text(
                  'Language',
                  style: mediumText10.copyWith(color: dividerColor),
                ),
                const SizedBox(height: 2),
                Text(
                  'ENG',
                  style: semiBoldText12.copyWith(color: blackColor2),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget buttonReadNow() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: greenColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            'Read Now',
            style: semiBoldText20.copyWith(color: whiteColor),
          ),
        ),
      );
    }

    Widget saveBottom(){
      return Positioned(
        top: 400,
        right: 30,
        child: Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(color: greenColor, shape: BoxShape.circle),
          child: Image.asset('assets/icons/save-button.png'),
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
            infoDescription(),
            buttonReadNow(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  header(),
                  bookImage(),
                  description(),
                ],
              ),
              saveBottom(),
            ],
          )
        ],
      ),
    );
  }
}
