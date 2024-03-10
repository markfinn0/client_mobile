import 'package:flutter/material.dart';

// primary: The main color used throughout your app.
// primaryVariant: A variant of the primary color, often used for shading or contrast.
// secondary: An additional color used for highlighting or other purposes.
// secondaryVariant: A variant of the secondary color, similar to primaryVariant.
// background: The background color of your app.
// surface: The surface color, often used for card backgrounds or elevated surfaces.
// onPrimary: The color for text and icons when placed on the primary color.
// onSecondary: The color for text and icons when placed on the secondary color.
// onBackground: The color for text and icons when placed on the background color.
// onSurface: The color for text and icons when placed on the surface color.
// brightness: Specifies whether the color scheme should be light or dark.
final ThemeData apptheme = ThemeData(
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFFF7F7F7),
        onPrimary: Color(0xFF333333),
        secondary: Color(0xFFed145b),
        onSecondary: Color(0xFF333333),
        error: Color(0xFFFFD300), //isn't defined
        onError: Color(0xFFed145b),  //isn't defined
        background: Color(0xFFFFFFFF), //background totally white color, this color is default background flutter color.
        onBackground: Color(0xFF333333),
        surface: Color(0xFFF7F7F7),
        onSurface: Color(0xFF333333)
        ));
