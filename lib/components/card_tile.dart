import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:image_gallery_app/constants.dart';

class CardTile extends StatelessWidget {
  final int imageIndex;
  final double authorSize;
  final double iconSize;
  final double iconPadding;
  final double aboutAuthorPadding;
  final TextStyle authorStyle;

  const CardTile({
    super.key,
    required this.imageIndex,
    required this.authorSize,
    required this.iconSize,
    required this.iconPadding,
    required this.aboutAuthorPadding,
    required this.authorStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/cake_0$imageIndex.png'),
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
                  this.iconPadding,
                ),
                decoration: BoxDecoration(
                  color: heartBackground,
                  borderRadius: BorderRadius.circular(
                    32.0,
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/icons/heart_filled.svg',
                  width: this.iconSize,
                  height: this.iconSize,
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
                padding: EdgeInsets.all(this.aboutAuthorPadding),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/author.png'),
                      fit: BoxFit.cover,
                      width: this.authorSize,
                      height: this.authorSize,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'Samantha Johnes',
                      style: this.authorStyle,
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
