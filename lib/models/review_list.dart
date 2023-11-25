import 'review_data.dart';
// import 'dart:convert';

class ReviewList {
  ReviewList(this.data);

  final List<ReviewData> data;

  factory ReviewList.fromJson(List<dynamic> json) {
    final list = json;
    final mapped =
        list.map((e) => ReviewData.fromJson(e as Map<String, dynamic>));
    final retList = mapped.toList();
    return ReviewList(retList);
  }

  factory ReviewList.fromFullJson(dynamic json) {
    // final jsonMap = json as Map<String, dynamic>;
    final list = json['data'] as List<dynamic>;
    return ReviewList.fromJson(list);
  }
}
