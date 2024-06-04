import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_gallery_app/constants.dart';

class CustomLargeButton extends StatelessWidget {
  final String buttonText;

  const CustomLargeButton({this.buttonText = "Button", super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 8.0,
        ),
        decoration: BoxDecoration(
          color: accentColors[500],
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF260044),
              blurRadius: 8,
              offset: Offset(0, 8),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/download.svg',
            ),
            SizedBox(
              width: 12.0,
            ),
            Text(
              this.buttonText,
              style: largeButtonText,
            ),
          ],
        ),
      ),
    );
  }
}
