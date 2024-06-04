import 'package:flutter/material.dart';
import 'package:image_gallery_app/constants.dart';

class Tag extends StatelessWidget {
  final String tagName;

  const Tag({required this.tagName, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 12.0,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        color: lightBlur,
        borderRadius: BorderRadius.circular(
          32.0,
        ),
      ),
      child: Text(
        tagName,
        style: tagText,
      ),
    );
  }
}
