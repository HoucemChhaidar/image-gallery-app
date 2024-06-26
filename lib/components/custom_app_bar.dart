import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_gallery_app/constants.dart';

class CustomAppBar extends StatelessWidget {
  final String appBarTitle;
  final Function()? onTap;

  const CustomAppBar({
    super.key,
    this.appBarTitle = '',
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 40.0,
              height: 40.0,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: lightBlur,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: SvgPicture.asset('assets/icons/arrow_right.svg'),
            ),
          ),
          SizedBox(
            width: 12.0,
          ),
          Text(
            '$appBarTitle',
            style: darkLargeHeading,
          ),
        ],
      ),
    );
  }
}
