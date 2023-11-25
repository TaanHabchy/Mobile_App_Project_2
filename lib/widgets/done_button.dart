import 'package:flutter/material.dart';
import 'package:projct_2/colors.dart';
import 'package:projct_2/services/review_service.dart';

class DoneButton extends StatelessWidget {
  DoneButton(
      {super.key,
      required this.bookTitle,
      required this.bookAuthor,
      required this.reviewTitle,
      required this.reviewAuthor,
      required this.reviewText});

  final service = ReviewService();

  final String bookTitle;
  final String bookAuthor;
  final String reviewTitle;
  final String reviewAuthor;
  final String reviewText;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backgroundColor,
      onPressed: () {
        service.insertReview(
            bookTitle, bookAuthor, reviewTitle, reviewAuthor, reviewText);
      },
      child: const Text("Done"),
    );
  }
}
