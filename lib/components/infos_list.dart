import 'package:flutter/material.dart';
import 'package:image_gallery_app/components/info.dart';

class InfosList extends StatelessWidget {
  const InfosList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Info(
          iconName: 'heart_filled',
          infoStats: 758,
        ),
        SizedBox(
          width: 24.0,
        ),
        Info(
          iconName: 'eye',
          infoStats: 13364,
        ),
        SizedBox(
          width: 24.0,
        ),
        Info(
          iconName: 'downloads',
          infoStats: 33,
        ),
      ],
    );
  }
}
