import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBoxListView extends StatelessWidget {
  const SimilarBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: const CustomBookImage(
              imageUrl:
                  'https://i0.wp.com/picjumbo.com/wp-content/uploads/dark-portrait-of-woman-with-hair-over-her-face-free-image.jpeg?w=2210&quality=70',
            ),
          );
        },
      ),
    );
  }
}
