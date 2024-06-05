import 'package:flutter/material.dart';

// Color Palette
final Map<int, Color> primaryColors = {
  400: const Color(0xFFF5F5F5),
  500: const Color(0xFFCECECE),
  600: const Color(0xFF9C9C9C),
  900: const Color(0xFF080808),
};

final Map<int, Color> accentColors = {
  400: const Color(0xFF7F33BA),
  500: const Color(0xFF5F00A9),
  900: const Color(0xFF130022),
};

const Color white = Color(0xFFFFFFFF);
const Color heartBackground = Color(0xFFFF6363);

const Color lightBlur = Color(0x19F5F5F5);
const Color darkBlur = Color(0x33080808);

// Text Styles
const TextStyle baseTextStyle = TextStyle(
  fontFamily: 'SFProDisplay',
);

final TextStyle inputLabelText = baseTextStyle.copyWith(
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  color: primaryColors[500],
);

final TextStyle inputPlaceholderText = baseTextStyle.copyWith(
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  color: primaryColors[600],
);

final TextStyle searchPlaceholderText = baseTextStyle.copyWith(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
  color: primaryColors[600],
);

final TextStyle largeButtonText = baseTextStyle.copyWith(
  fontSize: 16.0,
  fontWeight: FontWeight.w600,
  color: primaryColors[400]!,
);

final TextStyle mediumButtonText = largeButtonText.copyWith(
  fontWeight: FontWeight.w500,
);

final TextStyle smallHeading = baseTextStyle.copyWith(
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  color: primaryColors[500]!,
);

final TextStyle tagText = baseTextStyle.copyWith(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
  color: primaryColors[400]!,
);

final TextStyle smallAuthorName = baseTextStyle.copyWith(
  fontSize: 12.0,
  fontWeight: FontWeight.w500,
  color: primaryColors[400]!,
);

final TextStyle mediumAuthorName = baseTextStyle.copyWith(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
  color: primaryColors[400]!,
);

// Dark Theme Text Styles
final TextStyle darkXLargeHeading = baseTextStyle.copyWith(
  fontSize: 32.0,
  fontWeight: FontWeight.w700,
  color: primaryColors[400]!,
);

final TextStyle darkLargeHeading = baseTextStyle.copyWith(
  fontSize: 24.0,
  fontWeight: FontWeight.w600,
  color: primaryColors[400]!,
);

final TextStyle darkMediumHeading = baseTextStyle.copyWith(
  fontSize: 20.0,
  fontWeight: FontWeight.w500,
  color: primaryColors[400]!,
);

final TextStyle darkInfoText = baseTextStyle.copyWith(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
  color: primaryColors[400]!,
);

final TextStyle defaultText = baseTextStyle.copyWith(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
  color: primaryColors[400]!,
);

// Light Theme Text Styles
final TextStyle lightXLargeHeading = baseTextStyle.copyWith(
  fontSize: 32.0,
  fontWeight: FontWeight.w700,
  color: accentColors[900]!,
);

final TextStyle lightLargeHeading = baseTextStyle.copyWith(
  fontSize: 24.0,
  fontWeight: FontWeight.w600,
  color: accentColors[900]!,
);

final TextStyle lightMediumHeading = baseTextStyle.copyWith(
  fontSize: 20.0,
  fontWeight: FontWeight.w500,
  color: accentColors[900]!,
);

final TextStyle lightInfoText = baseTextStyle.copyWith(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
  color: accentColors[900]!,
);
