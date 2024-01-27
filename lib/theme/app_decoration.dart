import 'package:flutter/material.dart';
import 'package:anil_kumar_s_application2/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray20001,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA200.withOpacity(0.2),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA200.withOpacity(0.15),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal50,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90001 => BoxDecoration();
  static BoxDecoration get outlineBlack900011 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.11),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.gray100,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray400 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineTeal => BoxDecoration(
        border: Border.all(
          color: appTheme.teal300,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineTeal300 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.teal300,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineTeal3001 => BoxDecoration(
        color: appTheme.teal300,
        border: Border.all(
          color: appTheme.teal300,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get circleBorder32 => BorderRadius.circular(
        32.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder9 => BorderRadius.circular(
        9.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
