import 'package:flutter/material.dart';
import 'package:image_gallery_app/components/custom_button.dart';
import 'package:image_gallery_app/constants.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/avatar.png',
        ),
        SizedBox(
          width: 12.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Hi, John!",
              style: darkLargeHeading,
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              "Explore tons of images",
              style: smallHeading,
            ),
          ],
        ),
        Spacer(),
        CustomButton(),
      ],
    );
  }
}
