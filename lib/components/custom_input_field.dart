import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_gallery_app/constants.dart';

enum InputType { email, password, fullName }

class CustomInputField extends StatelessWidget {
  final InputType inputType;
  final String labelText;

  const CustomInputField({
    required this.inputType,
    required this.labelText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String placeholderText;
    String iconAsset;

    switch (inputType) {
      case InputType.email:
        placeholderText = 'john@example.com';
        iconAsset = 'assets/icons/email.svg';
        break;
      case InputType.password:
        placeholderText = '********';
        iconAsset = 'assets/icons/lock.svg';
        break;
      case InputType.fullName:
        placeholderText = 'john doe';
        iconAsset = 'assets/icons/user.svg';
        break;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 16.0,
          ),
          child: Text(
            this.labelText,
            style: inputLabelText,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 20.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconAsset,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                placeholderText,
                style: inputPlaceholderText,
              ),
              Spacer(),
              this.inputType == InputType.password
                  ? SvgPicture.asset('assets/icons/eye_slash.svg')
                  : SizedBox()
            ],
          ),
          decoration: BoxDecoration(
            color: lightBlur,
            borderRadius: BorderRadius.circular(
              8.0,
            ),
          ),
        ),
      ],
    );
  }
}
