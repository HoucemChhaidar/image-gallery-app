class ImageData {
  final String imageURL;
  final String authorImage;
  final String authorName;
  final List<String> tags;
  final int likes;
  final int views;
  final int downloads;

  ImageData({
    required this.imageURL,
    required this.authorImage,
    required this.authorName,
    required this.tags,
    required this.likes,
    required this.views,
    required this.downloads,
  });
}
