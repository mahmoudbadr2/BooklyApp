import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/core/widgets/custom_buttom.dart';
import 'package:bookly_app/features/home/data/models/bookmodel/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookmodel});
  final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButtom(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              text: 'Free',
            ),
          ),
          Expanded(
            child: CustomButtom(
              onPressed: () async {
                launchCustomUrl(context, bookmodel.volumeInfo.previewLink!);
              },
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              text: getText(bookmodel),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  String getText(Bookmodel bookmodel) {
    if (bookmodel.volumeInfo.previewLink != null) {
      return 'Preview';
    } else {
      return 'Not Available';
    }
  }
}
