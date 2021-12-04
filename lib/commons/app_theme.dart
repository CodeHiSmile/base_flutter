import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static const _fontFamily = 'MarkPro';

  /// The overall brightness of this color scheme.
  final Brightness brightness;

  /// The color displayed most frequently across your app’s screens and components.
  final Color primaryColor;
  final Color primaryVariantColor;

  /// An accent color that, when used sparingly, calls attention to parts
  /// of your app.
  final Color secondaryColor;
  final Color secondaryVariantColor;

  Color get accentColor => secondaryColor;

  Color get accentVariantColor => secondaryColor;

  /// A color that typically appears behind scrollable content.
  final Color backgroundColor;

  final Color primaryTextColor;
  final Color secondaryTextColor;

  final Color dividerColor;
  final Color borderColor;
  final Color shadowColor;

  final Color neutral1Color = const Color(0xFFF9FAFC);
  final Color neutral2Color = const Color(0xFFE5EAF3);
  final Color neutral4Color = const Color(0xFF98A2B1);
  final Color neutral5Color = const Color(0xFF6C6C81);
  final Color neutral6Color = const Color(0xFF42425B);

  final Color secondaryRedColor = const Color(0xFFFA3333);
  final Color errorColor = Colors.red;
  final Color successColor = Colors.green;
  final Color cancelButton = const Color(0xFFE5EAF3);
  final Color statusRejectedColor = const Color(0xFFFA3333);

  /// Material design text theme.
  /// ```
  /// NAME         SIZE  WEIGHT  SPACING
  /// headline1    96.0  light   -1.5
  /// headline2    60.0  light   -0.5
  /// headline3    48.0  regular  0.0
  /// headline4    34.0  regular  0.25
  /// headline5    24.0  regular  0.0
  /// headline6    20.0  medium   0.15
  /// subtitle1    16.0  regular  0.15
  /// subtitle2    14.0  medium   0.1
  /// body1        16.0  regular  0.5   (bodyText1)
  /// body2        14.0  regular  0.25  (bodyText2)
  /// button       14.0  medium   1.25
  /// caption      12.0  regular  0.4
  /// overline     10.0  regular  1.5
  final TextTheme textTheme;

  /// Create a ColorScheme instance.
  const AppTheme({
    required this.brightness,
    this.primaryColor = const Color(0xFF003E83),
    this.primaryVariantColor = const Color(0xFF00C7F2),
    this.secondaryColor = const Color(0xFF00C7F2),
    this.secondaryVariantColor = const Color(0xFF98A2B1),
    this.backgroundColor = Colors.white,
    this.primaryTextColor = const Color(0xFF000000),
    this.secondaryTextColor = const Color(0xFF6C6C81),
    this.dividerColor = const Color(0xFFF9FAFC),
    this.borderColor = const Color(0xFFE5EAF3),
    this.shadowColor = const Color(0xFF99A5CC),
    this.textTheme = const TextTheme(
      headline1:
      TextStyle(fontSize: 96.0, color: AppColors.primaryTextLightColor),
      headline2:
      TextStyle(fontSize: 60.0, color: AppColors.primaryTextLightColor),
      headline3:
      TextStyle(fontSize: 48.0, color: AppColors.primaryTextLightColor),
      headline4:
      TextStyle(fontSize: 34.0, color: AppColors.primaryTextLightColor),
      headline5:
      TextStyle(fontSize: 24.0, color: AppColors.primaryTextLightColor),
      headline6: TextStyle(
          fontSize: 20.0,
          color: AppColors.primaryTextLightColor,
          fontWeight: FontWeight.w500),
      subtitle1:
      TextStyle(fontSize: 16.0, color: AppColors.primaryTextLightColor),
      subtitle2: TextStyle(
          fontSize: 14.0,
          color: AppColors.primaryTextLightColor,
          fontWeight: FontWeight.w500),
      bodyText1:
      TextStyle(fontSize: 16.0, color: AppColors.primaryTextLightColor),
      bodyText2:
      TextStyle(fontSize: 14.0, color: AppColors.primaryTextLightColor),
      button: TextStyle(
          fontSize: 14.0,
          color: AppColors.primaryTextLightColor,
          fontWeight: FontWeight.w500),
      caption:
      TextStyle(fontSize: 12.0, color: AppColors.primaryTextLightColor),
      overline:
      TextStyle(fontSize: 14.0, color: AppColors.primaryTextLightColor),
    ),
  });

  factory AppTheme.light() {
    return const AppTheme(
      brightness: Brightness.light,
      primaryColor: AppColors.primaryLightColor,
      primaryVariantColor: AppColors.primaryVariantLightColor,
      secondaryColor: AppColors.secondaryLightColor,
      secondaryVariantColor: AppColors.secondaryVariantLightColor,
      backgroundColor: AppColors.backgroundLightColor,
      primaryTextColor: AppColors.primaryTextLightColor,
      secondaryTextColor: AppColors.secondaryTextLightColor,
      dividerColor: AppColors.dividerLightColor,
      borderColor: AppColors.borderLightColor,
      shadowColor: AppColors.shadowLightColor,
      textTheme: TextTheme(
        headline1:
        TextStyle(fontSize: 96.0, color: AppColors.primaryTextLightColor),
        headline2:
        TextStyle(fontSize: 60.0, color: AppColors.primaryTextLightColor),
        headline3:
        TextStyle(fontSize: 48.0, color: AppColors.primaryTextLightColor),
        headline4:
        TextStyle(fontSize: 34.0, color: AppColors.primaryTextLightColor),
        headline5:
        TextStyle(fontSize: 24.0, color: AppColors.primaryTextLightColor),
        headline6: TextStyle(
            fontSize: 20.0,
            color: AppColors.primaryTextLightColor,
            fontWeight: FontWeight.w500),
        subtitle1:
        TextStyle(fontSize: 16.0, color: AppColors.primaryTextLightColor),
        subtitle2: TextStyle(
            fontSize: 14.0,
            color: AppColors.primaryTextLightColor,
            fontWeight: FontWeight.w500),
        bodyText1:
        TextStyle(fontSize: 16.0, color: AppColors.primaryTextLightColor),
        bodyText2:
        TextStyle(fontSize: 14.0, color: AppColors.primaryTextLightColor),
        button: TextStyle(
            fontSize: 14.0,
            color: AppColors.primaryTextLightColor,
            fontWeight: FontWeight.w500),
        caption:
        TextStyle(fontSize: 12.0, color: AppColors.primaryTextLightColor),
        overline:
        TextStyle(fontSize: 14.0, color: AppColors.primaryTextLightColor),
      ),
    );
  }

  factory AppTheme.dark() {
    return const AppTheme(
      brightness: Brightness.light,
      primaryColor: AppColors.primaryDarkColor,
      primaryVariantColor: AppColors.primaryVariantDarkColor,
      secondaryColor: AppColors.secondaryDarkColor,
      secondaryVariantColor: AppColors.secondaryVariantDarkColor,
      backgroundColor: AppColors.backgroundDarkColor,
      primaryTextColor: AppColors.primaryTextDarkColor,
      secondaryTextColor: AppColors.secondaryTextDarkColor,
      dividerColor: AppColors.dividerDarkColor,
      borderColor: AppColors.borderDarkColor,
      shadowColor: AppColors.shadowDarkColor,
      textTheme: TextTheme(
        headline1:
        TextStyle(fontSize: 96.0, color: AppColors.primaryTextDarkColor),
        headline2:
        TextStyle(fontSize: 60.0, color: AppColors.primaryTextDarkColor),
        headline3:
        TextStyle(fontSize: 48.0, color: AppColors.primaryTextDarkColor),
        headline4:
        TextStyle(fontSize: 34.0, color: AppColors.primaryTextDarkColor),
        headline5:
        TextStyle(fontSize: 24.0, color: AppColors.primaryTextDarkColor),
        headline6: TextStyle(
            fontSize: 20.0,
            color: AppColors.primaryTextDarkColor,
            fontWeight: FontWeight.w500),
        subtitle1:
        TextStyle(fontSize: 16.0, color: AppColors.primaryTextDarkColor),
        subtitle2: TextStyle(
            fontSize: 14.0,
            color: AppColors.primaryTextDarkColor,
            fontWeight: FontWeight.w500),
        bodyText1:
        TextStyle(fontSize: 16.0, color: AppColors.primaryTextDarkColor),
        bodyText2:
        TextStyle(fontSize: 14.0, color: AppColors.primaryTextDarkColor),
        button: TextStyle(
            fontSize: 14.0,
            color: AppColors.primaryTextDarkColor,
            fontWeight: FontWeight.w500),
        caption:
        TextStyle(fontSize: 12.0, color: AppColors.primaryTextDarkColor),
        overline:
        TextStyle(fontSize: 14.0, color: AppColors.primaryTextDarkColor),
      ),
    );
  }

  bool get isDark => brightness == Brightness.dark;

  List<BoxShadow> get boxShadow => [
    BoxShadow(
      color: shadowColor,
      spreadRadius: 5,
      blurRadius: 7,
      offset: const Offset(0, 3),
    ),
  ];

  ThemeData toThemeData() {
    return ThemeData(
      brightness: brightness,
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      scaffoldBackgroundColor: backgroundColor,
      accentColor: accentColor,
      colorScheme: ColorScheme(
        primary: primaryColor,
        primaryVariant: primaryVariantColor,
        secondary: secondaryColor,
        secondaryVariant: secondaryVariantColor,
        surface: backgroundColor,
        background: backgroundColor,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        onBackground: Colors.white,
        onError: Colors.red,
        brightness: brightness,
      ),
      textTheme: textTheme,
      iconTheme: IconThemeData(
        color: secondaryVariantColor,
      ),
      shadowColor: shadowColor,
      dividerColor: dividerColor,
      unselectedWidgetColor: borderColor,
      fontFamily: _fontFamily,
    );
  }

  static AppTheme of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<InheritedAppTheme>()!
        .theme;
  }
}

class InheritedAppTheme extends InheritedWidget {
  /// Creates [InheritedWidget] from a provided [AppTheme] class
  const InheritedAppTheme({
    Key? key,
    required this.theme,
    required Widget child,
  }) : super(key: key, child: child);

  /// Represents chat theme
  final AppTheme theme;

  @override
  bool updateShouldNotify(InheritedAppTheme oldWidget) =>
      theme.hashCode != oldWidget.theme.hashCode;
}