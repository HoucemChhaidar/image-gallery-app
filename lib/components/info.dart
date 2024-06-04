import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_gallery_app/constants.dart';

class Info extends StatelessWidget {
  final String iconName;
  final int infoStats;

  const Info({required this.iconName, required this.infoStats, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(
            12.0,
          ),
          decoration: BoxDecoration(
            color: lightBlur,
            borderRadius: BorderRadius.circular(
              32.0,
            ),
          ),
          child: SvgPicture.asset(
            width: 20.0,
            height: 20.0,
            'assets/icons/$iconName.svg',
          ),
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          '$infoStats',
          style: darkInfoText,
        ),
      ],
    );
  }
}
