import 'package:flutter/material.dart';
import 'package:image_gallery_app/screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Gallery App',
      home: SignUpScreen(),
    );
  }
}
