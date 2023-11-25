import 'package:flutter/material.dart';
import 'package:projct_2/colors.dart';
import 'package:projct_2/models/review_data.dart';

/// Review Title
///
/// Review Author
/// Book Title
/// Book Author
///
/// Actual Review
class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key, required this.reviewData});
  final ReviewData reviewData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(reviewData.reviewtitle),
        backgroundColor: backgroundColor,
      ),
      body: ListView(
        children: [
          Row(
            children: [
              const Text("Reviewer: "),
              Text(reviewData.reviewer),
            ],
          ),
          Row(
            children: [
              const Text("Review Title: "),
              Text(reviewData.title),
            ],
          ),
          Row(
            children: [
              const Text("Book Author: "),
              Text(reviewData.author),
            ],
          ),
          Column(
            children: [
              const Text("\nAnalysis: "),
              Text("    ${reviewData.reviewtext}"),
            ],
          ),
        ],
      ),
    );
  }
}
