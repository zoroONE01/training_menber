part of utils;

class ThemeManager {
  ThemeManager._();

  static final ThemeManager _instance = ThemeManager._();

  factory ThemeManager() => _instance;
  final _lightScheme = ColorScheme.fromSeed(
    seedColor: colorCaptionBlue,
    brightness: Brightness.light,
    primary: colorCaptionBlue,
    secondary: colorCinnabarOrange,
    primaryContainer: colorCulturedF2White,
    secondaryContainer: colorPlatinumWhite,
    onSecondaryContainer: colorRichBlack,
    tertiary: colorBlueSapphire50,
    tertiaryContainer: colorCulturedF1White,
    background: colorWhite,
    onSurface: colorRichBlack,
    onInverseSurface: colorBlack50,
    onSurfaceVariant: colorJetGrey,
    inversePrimary: colorSpanishGrey,
  );
  final _darkScheme = ColorScheme.fromSeed(
    seedColor: colorCaptionBlue,
    brightness: Brightness.dark,
    secondary: colorCinnabarOrange,
  );

  ThemeData get lightTheme => ThemeData.light().copyWith(
        colorScheme: _lightScheme,
        textTheme: ThemeData.light().textTheme.apply(fontFamily: 'Noto Sans'),
        useMaterial3: true,
      );

  ThemeData get darkTheme => ThemeData.dark().copyWith(
        colorScheme: _darkScheme,
        textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'Noto Sans'),
        useMaterial3: true,
      );
}
