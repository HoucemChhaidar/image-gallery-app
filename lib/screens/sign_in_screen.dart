import 'package:flutter/material.dart';
import 'package:image_gallery_app/components/custom_input_field.dart';
import 'package:image_gallery_app/components/custom_large_button.dart';
import 'package:image_gallery_app/components/dark_background.dart';
import 'package:image_gallery_app/constants.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DarkBackground(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            top: 80.0,
            right: 20.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back!',
                  style: darkXLargeHeading,
                ),
                SizedBox(
                  height: 40.0,
                ),
                CustomInputField(
                  inputType: InputType.email,
                  labelText: 'Email Address',
                ),
                SizedBox(
                  height: 24.0,
                ),
                CustomInputField(
                  inputType: InputType.password,
                  labelText: 'Password',
                ),
                SizedBox(
                  height: 48.0,
                ),
                CustomLargeButton(
                  withIcon: false,
                  buttonText: 'Sign In',
                ),
                SizedBox(
                  height: 16.0,
                ),
                Center(
                  child: Text(
                    'New to the app? Create an account!',
                    style: inputPlaceholderText,
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
