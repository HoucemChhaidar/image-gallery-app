import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:image_gallery_app/constants.dart';

class CardTile extends StatelessWidget {
  final int index;

  const CardTile({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/cake_0$index.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              right: 8.0,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: EdgeInsets.all(
                  8.0,
                ),
                decoration: BoxDecoration(
                  color: heartBackground,
                  borderRadius: BorderRadius.circular(
                    32.0,
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/icons/heart_filled.svg',
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: GlassContainer(
              blur: 16.0,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/author.png'),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'Samantha Johnes',
                      style: smallAuthorName,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
