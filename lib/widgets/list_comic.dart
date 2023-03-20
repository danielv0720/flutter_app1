import 'package:flutter/material.dart';
import 'package:marvel_app/pages/detail_page.dart';

import 'custom_image.dart';

class ListComics extends StatelessWidget {
  const ListComics({super.key, required this.image, required this.tittle});

  final String tittle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Comic_Detail())),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 250,
            child: Custom_image(
              child: Image.asset(image),
            ),
          ),
          SizedBox(height: 5),
          Text(
            tittle.toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
