import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/profile.png'))),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Sarah,',
                  style: semiBoldText16,
                ),
                Text('Good Morning',
                    style: regularText14.copyWith(color: greyColor)),
              ],
            ),
            const Spacer(),
            Image.asset('assets/icons/icon-menu.png', width: 18),
          ],
        ),
      );
    }

    Widget searchField() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Find Your Favorite Book',
            hintStyle: mediumText12.copyWith(color: greyColor),
            fillColor: greyColorSearchField,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none),
            isCollapsed: true,
            contentPadding: const EdgeInsets.all(18),
            suffixIcon: InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: greenColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.search_rounded,
                  color: whiteColor,
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget recentBook() {
      return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Container(
              height: 150,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: borderColorRecentBook),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/recentbook_1.png', width: 90),
                  const SizedBox(width: 18),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'The Magic',
                        style: semiBoldText14.copyWith(color: blackColor2),
                      ),
                      CircularPercentIndicator(
                        reverse: true,
                        radius: 50,
                        lineWidth: 10,
                        percent: 0.5,
                        circularStrokeCap: CircularStrokeCap.round,
                        animation: true,
                        progressColor: greenColor,
                      ),
                      Text(
                        '50% Completed',
                        style: mediumText12.copyWith(color: greyColorRecentBook),
                      ),
                    ],
                  )
                ],
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
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(),
                  const SizedBox(height: 30),
                  searchField(),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Recent Book',
                      style: semiBoldText16.copyWith(color: blackColor),
                    ),
                  ),
                  const SizedBox(height: 12),
                  recentBook(),
                ],
              ),
            ),
          ],
        ));
  }
}
