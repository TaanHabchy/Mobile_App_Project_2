// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:projct_2/colors.dart';
import 'package:projct_2/widgets/done_button.dart';

/// Book Title
/// Book Author
/// Review Author
/// Review Title
/// Review Body

class WriteButton extends StatelessWidget {
  WriteButton({super.key});

  TextEditingController bookTitleController = TextEditingController();
  TextEditingController bookAuthorController = TextEditingController();
  TextEditingController reviewerController = TextEditingController();
  TextEditingController reviewTitleController = TextEditingController();
  TextEditingController reviewTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backgroundColor,
      onPressed: () {
        showModalBottomSheet<void>(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Column(
                  children: [
                    TextField(
                      controller: bookTitleController,
                      decoration: const InputDecoration(
                        label: Text("Book Title"),
                      ),
                    ),
                    TextField(
                      controller: bookAuthorController,
                      decoration: const InputDecoration(
                        label: Text("Book Author"),
                      ),
                    ),
                    TextField(
                      controller: reviewerController,
                      decoration: const InputDecoration(
                        label: Text("Reviewer"),
                      ),
                    ),
                    TextField(
                      controller: reviewTitleController,
                      decoration: const InputDecoration(
                        label: Text("Review Title"),
                      ),
                    ),
                    TextField(
                      controller: reviewTextController,
                      decoration: const InputDecoration(
                        label: Text("Review Text"),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    DoneButton(
                      bookTitle: bookTitleController.text,
                      bookAuthor: bookAuthorController.text,
                      reviewAuthor: reviewerController.text,
                      reviewTitle: reviewTitleController.text,
                      reviewText: reviewTextController.text,
                    ),
                  ],
                ),
              );
            });
      },
      child: const Icon(Icons.edit_sharp),
    );
  }
}
