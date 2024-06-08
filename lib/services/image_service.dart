import 'package:dio/dio.dart';
import 'package:image_gallery_app/keys.dart';
import 'package:image_gallery_app/models/image_model.dart';

abstract class ImageService {
  static Future<ImageModel> getImages(String searchKeyword) async {
    Response response = await Dio().get(
        'https://pixabay.com/api/?key=$apiKey&q=$searchKeyword&image_type=photo');
    return ImageModel.fromJson(response.data);
  }
}
