import 'package:flutter/material.dart';
import 'package:image_gallery_app/components/info.dart';

class InfosList extends StatelessWidget {
  final int likes;
  final int views;
  final int downloads;

  const InfosList({
    super.key,
    required this.likes,
    required this.views,
    required this.downloads,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Info(
          iconName: 'heart_filled',
          infoStats: likes,
        ),
        SizedBox(
          width: 24.0,
        ),
        Info(
          iconName: 'eye',
          infoStats: views,
        ),
        SizedBox(
          width: 24.0,
        ),
        Info(
          iconName: 'downloads',
          infoStats: downloads,
        ),
      ],
    );
  }
}
