import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_gallery_app/components/card_tile.dart';
import 'package:image_gallery_app/components/custom_search_bar.dart';
import 'package:image_gallery_app/components/dark_background.dart';
import 'package:image_gallery_app/components/header.dart';
import 'package:image_gallery_app/components/tags_list.dart';
import 'package:image_gallery_app/constants.dart';
import 'package:image_gallery_app/models/image_data.dart';
import 'package:image_gallery_app/models/image_model.dart';
import 'package:image_gallery_app/screens/about_image_screen.dart';
import 'package:image_gallery_app/services/image_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<ImageModel> _imagesFuture;
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _imagesFuture = _loadImages();
  }

  Future<ImageModel> _loadImages() async {
    if (_searchQuery.isNotEmpty) {
      return ImageService.getImages(_searchQuery);
    } else {
      return ImageService.getImages('cakes');
    }
  }

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
              CustomSearchBar(
                onChanged: (String query) async {
                  setState(() {
                    _searchQuery = query;
                  });
                  _imagesFuture = _loadImages();
                  await _loadImages();
                },
              ),
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
              TagsList(tags: ['Cats', 'Dogs', 'Cakes']),
              SizedBox(
                height: 12.0,
              ),
              Expanded(
                child: FutureBuilder(
                  future: _imagesFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          'Error: ${snapshot.error}',
                          style: TextStyle(
                            color: primaryColors[400],
                            fontSize: 16.0,
                          ),
                        ),
                      );
                    } else if (!snapshot.hasData) {
                      return const Center(
                        child: Text('No data available'),
                      );
                    } else {
                      return SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 12.0,
                            ),
                            MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              child: GridView.builder(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: 256.0,
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 16.0,
                                  mainAxisSpacing: 16.0,
                                ),
                                itemCount: snapshot.data!.hits!.length,
                                itemBuilder: (context, index) {
                                  final hit = snapshot.data!.hits![index];
                                  final imageData = ImageData(
                                    imageURL: hit.webformatURL!,
                                    authorImage: hit.userImageURL!,
                                    authorName: hit.user!,
                                    tags: hit.tags!,
                                    likes: hit.likes!,
                                    views: hit.views!,
                                    downloads: hit.downloads!,
                                  );

                                  return CardTile(
                                    imageData: imageData,
                                    iconSize: 12.0,
                                    iconPadding: 8.0,
                                    authorSize: 24.0,
                                    aboutAuthorPadding: 8.0,
                                    authorStyle: smallAuthorName,
                                    onTap: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              AboutImageScreen(
                                            imageData: imageData,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
