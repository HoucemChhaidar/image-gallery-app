import 'package:flutter/material.dart';
import 'package:image_gallery_app/components/card_tile.dart';
import 'package:image_gallery_app/components/custom_app_bar.dart';
import 'package:image_gallery_app/components/custom_large_button.dart';
import 'package:image_gallery_app/components/dark_background.dart';
import 'package:image_gallery_app/components/infos_list.dart';
import 'package:image_gallery_app/components/tags_list.dart';
import 'package:image_gallery_app/constants.dart';

class AboutImageScreen extends StatelessWidget {
  const AboutImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColors[900],
        toolbarHeight: 68.0,
        title: CustomAppBar(appBarTitle: 'Delicious Cake'),
      ),
      body: DarkBackground(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            top: 24.0,
            right: 20.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 400.0,
                  child: CardTile(
                    imageIndex: 1,
                    iconSize: 16.0,
                    iconPadding: 16.0,
                    authorSize: 40.0,
                    aboutAuthorPadding: 12.0,
                    authorStyle: mediumAuthorName,
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                TagsList(),
                SizedBox(
                  height: 12.0,
                ),
                InfosList(),
                SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5.0,
                  ),
                  child: CustomLargeButton(
                    withIcon: true,
                    buttonText: "Download",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
