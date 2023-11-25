import 'dart:convert';
import 'package:uuid/uuid.dart';

class ReviewData {
  ReviewData({
    required this.title,
    required this.author,
    required this.reviewer,
    required this.reviewtitle,
    required this.reviewtext,
  });

  final String title;
  final String author;
  final String reviewer;
  final String reviewtitle;
  final String reviewtext;

  factory ReviewData.fromJson(Map<String, dynamic> json) {
    return ReviewData(
      title: json['title'] as String,
      author: json['author'] as String,
      reviewer: json['reviewer'] as String,
      reviewtitle: json['reviewtitle'] as String,
      reviewtext: json['reviewtext'] as String,
    );
  }

  String toJson() {
    final id = const Uuid().v8();
    final data = {
      'id': id,
      'title': title,
      'author': author,
      'reviewer': reviewer,
      'reviewtitle': reviewtitle,
      'reviewtext': reviewtext,
    };
    return jsonEncode(data);
  }
}
