import 'package:flutter/material.dart';
import 'package:image_gallery_app/components/card_tile.dart';
import 'package:image_gallery_app/components/custom_app_bar.dart';
import 'package:image_gallery_app/components/custom_large_button.dart';
import 'package:image_gallery_app/components/dark_background.dart';
import 'package:image_gallery_app/components/infos_list.dart';
import 'package:image_gallery_app/components/tags_list.dart';
import 'package:image_gallery_app/constants.dart';
import 'package:image_gallery_app/models/image_data.dart';
import 'package:image_gallery_app/screens/home_screen.dart';

class AboutImageScreen extends StatelessWidget {
  final ImageData imageData;

  AboutImageScreen({
    super.key,
    required this.imageData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColors[900],
        toolbarHeight: 68.0,
        title: CustomAppBar(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
              (Route<dynamic> route) => false,
            );
          },
        ),
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
                    imageData: imageData,
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
                TagsList(tags: imageData.tags),
                SizedBox(
                  height: 12.0,
                ),
                InfosList(
                  likes: imageData.likes,
                  views: imageData.views,
                  downloads: imageData.downloads,
                ),
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
