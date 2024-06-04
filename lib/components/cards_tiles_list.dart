import 'package:flutter/material.dart';
import 'package:image_gallery_app/components/card_tile.dart';

class CardsTilesList extends StatelessWidget {
  const CardsTilesList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 256.0,
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return CardTile(index: index + 1);
      },
    );
  }
}