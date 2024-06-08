import 'package:flutter/material.dart';
import 'package:image_gallery_app/components/tag.dart';

class TagsList extends StatelessWidget {
  final List<String> tags;

  const TagsList({required this.tags, super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: tags
            .map(
              (tag) => Tag(tagName: tag),
            )
            .toList(),
      ),
    );
  }
}
