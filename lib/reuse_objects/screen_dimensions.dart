import 'package:flutter/material.dart';
class ScreenInfo{
  final Size screenSize;
  final double screenWidth;
  final double screenHeight;
  final Orientation orientation;
  final double devicePixelRatio;

  ScreenInfo({
    required this.screenSize,
    required this.screenWidth,
    required this.screenHeight,
    required this.orientation,
    required this.devicePixelRatio,
  });
}


ScreenInfo getScreenInformation(BuildContext context) {
  
  MediaQueryData mediaQuery = MediaQuery.of(context);
  Size screenSize = mediaQuery.size;
  double screenWidth = screenSize.width;
  double screenHeight = screenSize.height;
  Orientation orientation = mediaQuery.orientation;
  double devicePixelRatio = mediaQuery.devicePixelRatio;
  
  return ScreenInfo(
  screenSize : screenSize,
   screenWidth : screenWidth,
   screenHeight : screenHeight,
   orientation : orientation,
   devicePixelRatio : devicePixelRatio,
   );
  
  }
