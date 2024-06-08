import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_gallery_app/constants.dart';

class CustomSearchBar extends StatelessWidget {
  final Function(String) onChanged;

  CustomSearchBar({super.key, required this.onChanged});

  Timer? searchOnStoppedTyping;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lightBlur,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Color(0x19444444),
            blurRadius: 8,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 20.0,
        ),
        child: TextField(
          onChanged: (value) {
            const duration = Duration(milliseconds: 800);
            if (searchOnStoppedTyping != null) {
              searchOnStoppedTyping!.cancel();
            }
            searchOnStoppedTyping = Timer(duration, () => onChanged(value));
          },
          style: defaultText,
          decoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: inputPlaceholderText,
            border: InputBorder.none,
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
            ),
            isDense: true,
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}
