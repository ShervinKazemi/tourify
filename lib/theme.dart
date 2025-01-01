import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282605201),
      surfaceTint: Color(4282605201),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292403967),
      onPrimaryContainer: Color(4278196801),
      secondary: Color(4287450667),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294958027),
      onSecondaryContainer: Color(4281602304),
      tertiary: Color(4281952572),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4290441399),
      onTertiaryContainer: Color(4278198534),
      error: Color(4287646282),
      onError: Color(4294967295),
      errorContainer: Color(4294957785),
      onErrorContainer: Color(4282058764),
      surface: Color(4294310652),
      onSurface: Color(4279704606),
      onSurfaceVariant: Color(4282337354),
      outline: Color(4285495674),
      outlineVariant: Color(4290758858),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086259),
      inversePrimary: Color(4289579007),
      primaryFixed: Color(4292403967),
      onPrimaryFixed: Color(4278196801),
      primaryFixedDim: Color(4289579007),
      onPrimaryFixedVariant: Color(4280960632),
      secondaryFixed: Color(4294958027),
      onSecondaryFixed: Color(4281602304),
      secondaryFixedDim: Color(4294948497),
      onSecondaryFixedVariant: Color(4285544214),
      tertiaryFixed: Color(4290441399),
      onTertiaryFixed: Color(4278198534),
      tertiaryFixedDim: Color(4288599196),
      onTertiaryFixedVariant: Color(4280307750),
      surfaceDim: Color(4292271069),
      surfaceBright: Color(4294310652),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293915895),
      surfaceContainer: Color(4293521393),
      surfaceContainerHigh: Color(4293192171),
      surfaceContainerHighest: Color(4292797414),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4280697459),
      surfaceTint: Color(4282605201),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4284118185),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4285215507),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4289225535),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4280044578),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283400272),
      onTertiaryContainer: Color(4294967295),
      error: Color(4285411121),
      onError: Color(4294967295),
      errorContainer: Color(4289355615),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310652),
      onSurface: Color(4279704606),
      onSurfaceVariant: Color(4282074182),
      outline: Color(4283916642),
      outlineVariant: Color(4285758590),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086259),
      inversePrimary: Color(4289579007),
      primaryFixed: Color(4284118185),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4282473614),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4289225535),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4287253289),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283400272),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281755193),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292271069),
      surfaceBright: Color(4294310652),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293915895),
      surfaceContainer: Color(4293521393),
      surfaceContainerHigh: Color(4293192171),
      surfaceContainerHighest: Color(4292797414),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278198605),
      surfaceTint: Color(4282605201),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280697459),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282324480),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285215507),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278200585),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4280044578),
      onTertiaryContainer: Color(4294967295),
      error: Color(4282650386),
      onError: Color(4294967295),
      errorContainer: Color(4285411121),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310652),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280034599),
      outline: Color(4282074182),
      outlineVariant: Color(4282074182),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086259),
      inversePrimary: Color(4293324031),
      primaryFixed: Color(4280697459),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278791004),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285215507),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283375105),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4280044578),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278269198),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292271069),
      surfaceBright: Color(4294310652),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293915895),
      surfaceContainer: Color(4293521393),
      surfaceContainerHigh: Color(4293192171),
      surfaceContainerHighest: Color(4292797414),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289579007),
      surfaceTint: Color(4289579007),
      onPrimary: Color(4279185248),
      primaryContainer: Color(4280960632),
      onPrimaryContainer: Color(4292403967),
      secondary: Color(4294948497),
      onSecondary: Color(4283703555),
      secondaryContainer: Color(4285544214),
      onSecondaryContainer: Color(4294958027),
      tertiary: Color(4288599196),
      onTertiary: Color(4278532369),
      tertiaryContainer: Color(4280307750),
      onTertiaryContainer: Color(4290441399),
      error: Color(4294947762),
      onError: Color(4283833631),
      errorContainer: Color(4285739828),
      onErrorContainer: Color(4294957785),
      surface: Color(4279178262),
      onSurface: Color(4292797414),
      onSurfaceVariant: Color(4290758858),
      outline: Color(4287206036),
      outlineVariant: Color(4282337354),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797414),
      inversePrimary: Color(4282605201),
      primaryFixed: Color(4292403967),
      onPrimaryFixed: Color(4278196801),
      primaryFixedDim: Color(4289579007),
      onPrimaryFixedVariant: Color(4280960632),
      secondaryFixed: Color(4294958027),
      onSecondaryFixed: Color(4281602304),
      secondaryFixedDim: Color(4294948497),
      onSecondaryFixedVariant: Color(4285544214),
      tertiaryFixed: Color(4290441399),
      onTertiaryFixed: Color(4278198534),
      tertiaryFixedDim: Color(4288599196),
      onTertiaryFixedVariant: Color(4280307750),
      surfaceDim: Color(4279178262),
      surfaceBright: Color(4281612860),
      surfaceContainerLowest: Color(4278783761),
      surfaceContainerLow: Color(4279704606),
      surfaceContainer: Color(4279967778),
      surfaceContainerHigh: Color(4280625965),
      surfaceContainerHighest: Color(4281349688),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289973247),
      surfaceTint: Color(4289579007),
      onPrimary: Color(4278195511),
      primaryContainer: Color(4285960647),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294950043),
      onSecondary: Color(4281076992),
      secondaryContainer: Color(4291395160),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4288927904),
      onTertiary: Color(4278196996),
      tertiaryContainer: Color(4285177194),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949304),
      onError: Color(4281598984),
      errorContainer: Color(4291525242),
      onErrorContainer: Color(4278190080),
      surface: Color(4279178262),
      onSurface: Color(4294376446),
      onSurfaceVariant: Color(4291022030),
      outline: Color(4288390566),
      outlineVariant: Color(4286285191),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797414),
      inversePrimary: Color(4281091961),
      primaryFixed: Color(4292403967),
      onPrimaryFixed: Color(4278194221),
      primaryFixedDim: Color(4289579007),
      onPrimaryFixedVariant: Color(4279711078),
      secondaryFixed: Color(4294958027),
      onSecondaryFixed: Color(4280486144),
      secondaryFixedDim: Color(4294948497),
      onSecondaryFixedVariant: Color(4284163847),
      tertiaryFixed: Color(4290441399),
      onTertiaryFixed: Color(4278195715),
      tertiaryFixedDim: Color(4288599196),
      onTertiaryFixedVariant: Color(4279058199),
      surfaceDim: Color(4279178262),
      surfaceBright: Color(4281612860),
      surfaceContainerLowest: Color(4278783761),
      surfaceContainerLow: Color(4279704606),
      surfaceContainer: Color(4279967778),
      surfaceContainerHigh: Color(4280625965),
      surfaceContainerHighest: Color(4281349688),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294703871),
      surfaceTint: Color(4289579007),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4289973247),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965752),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4294950043),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293984235),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4288927904),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949304),
      onErrorContainer: Color(4278190080),
      surface: Color(4279178262),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294180094),
      outline: Color(4291022030),
      outlineVariant: Color(4291022030),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797414),
      inversePrimary: Color(4278528345),
      primaryFixed: Color(4292798463),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4289973247),
      onPrimaryFixedVariant: Color(4278195511),
      secondaryFixed: Color(4294959571),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4294950043),
      onSecondaryFixedVariant: Color(4281076992),
      tertiaryFixed: Color(4290704827),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4288927904),
      onTertiaryFixedVariant: Color(4278196996),
      surfaceDim: Color(4279178262),
      surfaceBright: Color(4281612860),
      surfaceContainerLowest: Color(4278783761),
      surfaceContainerLow: Color(4279704606),
      surfaceContainer: Color(4279967778),
      surfaceContainerHigh: Color(4280625965),
      surfaceContainerHighest: Color(4281349688),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
