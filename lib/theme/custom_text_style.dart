import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyLargeDeeporange900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.deepOrange900,
      );
  static get bodyLargeErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyLargeTeal700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.teal700,
      );
  static get bodyLargeff003829 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF003829),
        fontSize: 18.fSize,
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray600_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRedA200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.redA200,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRegular => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallLightblue800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lightBlue800,
      );
  static get bodySmallLightblue80010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lightBlue800,
        fontSize: 10.fSize,
      );
  static get bodySmallOrange600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.orange600,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallTeal500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal500,
      );
  static get bodySmallTeal700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal700,
      );
  static get bodySmallTeal70010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal700,
        fontSize: 10.fSize,
      );
  static get bodySmallTeal700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal700,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallWhiteA700Light => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmall_1 => theme.textTheme.bodySmall!;
  static get bodySmallff444745 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF444745),
      );
  static get bodySmallff8e928f => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF8E928F),
        fontWeight: FontWeight.w300,
      );
  // Display text style
  static get displayMediumGray800 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get displayMediumThin => theme.textTheme.displayMedium!.copyWith(
        fontSize: 48.fSize,
        fontWeight: FontWeight.w100,
      );
  // Headline text style
  static get headlineLargeGray800 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray800,
      );
  static get headlineLargeGray800Medium =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w500,
      );
  static get headlineLargeTeal700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.teal700,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallGray40001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray40001,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallTeal40001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.teal40001,
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeGray500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get labelLargeGray80001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray80001,
      );
  static get labelLargeRed600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red600,
      );
  static get labelLargeRedA10001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.redA10001,
      );
  static get labelLargeTeal300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal300,
      );
  static get labelLargeff006492 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF006492),
      );
  static get labelLargeff006c52 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF006C52),
      );
  static get labelLargeff8e928f => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF8E928F),
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Roboto text style
  static get robotoBluegray40001 => TextStyle(
        color: appTheme.blueGray40001,
        fontSize: 74.fSize,
        fontWeight: FontWeight.w100,
      ).roboto;
  // Title text style
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get titleLargeGray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeff002117 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF002117),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeff002117_1 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF002117),
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumBlack90001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumGray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get titleMediumGray400_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get titleMediumGray60001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get titleMediumGray600_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 18.fSize,
      );
  static get titleMediumTeal800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal800,
      );
  static get titleMediumTeal900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal900,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get titleMediumWhiteA700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumff003829 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF003829),
        fontSize: 18.fSize,
      );
  static get titleSmallBlack90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallBlack90001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
      );
  static get titleSmallDeeporange900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepOrange900,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallGray600_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallGray600_2 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallGray80001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80001,
      );
  static get titleSmallLightblue800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightBlue800,
      );
  static get titleSmallOrange600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.orange600,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallTeal40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal40001,
      );
  static get titleSmallTeal500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal500,
      );
  static get titleSmallTeal700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal700,
      );
  static get titleSmallff707974 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF707974),
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
