import 'package:flutter/cupertino.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../themes.dart';

class RecentBook extends StatelessWidget {
  const RecentBook({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: borderColorRecentBook),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(image, width: 90),
          const SizedBox(width: 18),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
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
    );
  }
}
