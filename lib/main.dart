import 'package:flutter/material.dart';
import 'package:projct_2/colors.dart';
import 'package:projct_2/services/review_service.dart';
import 'package:projct_2/widgets/review_button.dart';
import 'package:projct_2/widgets/write_button.dart';

import 'models/review_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final service = ReviewService();
  List<ReviewData> list = [];

  @override
  void initState() {
    super.initState();
    service.fetchList().then((fetchedList) {
      setState(() {
        list = fetchedList.data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
          title: const Text("List of Reviews"),
          backgroundColor: backgroundColor),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ReviewButton(list[index]);
        },
      ),
      floatingActionButton: WriteButton(),
    ));
  }
}
