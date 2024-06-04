import 'package:flutter/material.dart';
import 'package:image_gallery_app/components/cards_tiles_list.dart';
import 'package:image_gallery_app/components/custom_app_bar.dart';
import 'package:image_gallery_app/components/dark_background.dart';
import 'package:image_gallery_app/constants.dart';

class MyLibraryScreen extends StatelessWidget {
  const MyLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColors[900],
        toolbarHeight: 68.0,
        title: CustomAppBar(appBarTitle: 'My Library'),
      ),
      body: DarkBackground(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            top: 24.0,
            right: 20.0,
          ),
          child: SingleChildScrollView(
            child: CardsTilesList(),
          ),
        ),
      ),
    );
  }
}
