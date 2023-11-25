import 'package:flutter/material.dart';
import 'package:projct_2/colors.dart';
import 'package:projct_2/pages/review_page.dart';
import '../models/review_data.dart';

class ReviewButton extends StatelessWidget {
  const ReviewButton(this.reviewData, {super.key});
  final ReviewData reviewData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(Color.fromARGB(255, 4, 4, 4)),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ReviewPage(
                        reviewData: reviewData,
                      )));
        },
        child: Text(reviewData.reviewtitle),
      ),
    );
  }
}
