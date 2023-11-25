import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:projct_2/models/review_data.dart';
import '../models/review_list.dart';

/*
https://api.restpoint.io/doc-runs?docId=SwaggerUI&x-endpoint-key=a7050c2545984437b2029d013d8a2e34
*/
// https://api.restpoint.io/api/book?docId=SwaggerUI&x-endpoint-key=84afd7c94c40453bacee7e66833638d5
class ReviewService {
  final urlString = 'https://api.restpoint.io/api/book';
  final endpointKey = '84afd7c94c40453bacee7e66833638d5';
  final headerKey = 'x-endpoint-key';

  Future<void> insertReview(String bookTitle, String bookAuthor,
      String reviewTitle, String reviewAuthor, String reviewText) async {
    final reviewData = ReviewData(
        title: bookTitle,
        author: bookAuthor,
        reviewtitle: reviewTitle,
        reviewer: reviewAuthor,
        reviewtext: reviewText);
    final body = reviewData.toJson();
    final response = await http.post(
      Uri.parse(urlString),
      headers: {
        headerKey: endpointKey,
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      body: body,
    );
    if (response.statusCode != 200) {
      throw (Exception('failed to insert ${response.statusCode}'));
    }
  }

  Future<ReviewList> fetchList() async {
    final response = await http.get(Uri.parse(urlString), headers: {
      headerKey: endpointKey,
    });
    if (response.statusCode != 200) {
      throw Exception('failed to fetch ${response.statusCode}');
    }
    final jsonBody = response.body;
    final json = jsonDecode(jsonBody);
    return ReviewList.fromFullJson(json);
  }
}
