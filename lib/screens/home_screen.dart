import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_gallery_app/components/cards_tiles_list.dart';
import 'package:image_gallery_app/components/custom_search_bar.dart';
import 'package:image_gallery_app/components/dark_background.dart';
import 'package:image_gallery_app/components/header.dart';
import 'package:image_gallery_app/components/tags_list.dart';
import 'package:image_gallery_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DarkBackground(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            top: 48.0,
            right: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Header(),
              SizedBox(
                height: 24.0,
              ),
              CustomSearchBar(),
              SizedBox(
                height: 24.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Tags',
                    style: darkMediumHeading,
                  ),
                  Row(
                    children: [
                      Text(
                        'See All',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: primaryColors[600],
                        ),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      SvgPicture.asset(
                        'assets/icons/chevron_right.svg',
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              TagsList(),
              SizedBox(
                height: 12.0,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12.0,
                      ),
                      CardsTilesList(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
