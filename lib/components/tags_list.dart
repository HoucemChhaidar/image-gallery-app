import 'package:flutter/material.dart';
import 'package:image_gallery_app/components/tag.dart';

class TagsList extends StatelessWidget {
  const TagsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Tag(tagName: 'Cats'),
          Tag(tagName: 'Dogs'),
          Tag(tagName: 'Flowers'),
          Tag(tagName: 'Portraits'),
        ],
      ),
    );
  }
}
