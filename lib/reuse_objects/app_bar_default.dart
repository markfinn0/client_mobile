import "package:flutter/material.dart";
import "package:flutter_application/reuse_objects/screen_dimensions.dart";
import "package:google_fonts/google_fonts.dart";
import "color_theme.dart";

class MyAppBarPageConstructor {
  static AppBar buildAppBar(BuildContext context, String title,
    {Color? backgroundColorAppBar, 
    Color? fontColorAppBar,
    double? appBarHeight}) {

    ThemeData theme = apptheme;
    backgroundColorAppBar ??= theme.colorScheme.secondary;
    fontColorAppBar ??=  theme.colorScheme.onSecondary;

    ScreenInfo screenInfo = getScreenInformation(context);
    appBarHeight ??= screenInfo.screenHeight * 0.1;
    return AppBar(
      toolbarHeight: appBarHeight,
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          // bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      backgroundColor: backgroundColorAppBar,
      title: Text(title,
          style: GoogleFonts.getFont('Lato',
              fontSize: appBarHeight * 0.3,
              textStyle: TextStyle(color: fontColorAppBar))),
    );
  }
}

class MyAppBarPageConstructorWithReturn extends MyAppBarPageConstructor {
  static AppBar buildAppBar(
      BuildContext context, String title, Function()? returnIconAction, {
        Color? backgroundColorAppBar, 
        Color? fontColorAppBar,
        double? appBarHeight,
        }) {

    AppBar appBar = MyAppBarPageConstructor.buildAppBar(context, title);
  
    appBarHeight ??= appBar.toolbarHeight;
    return AppBar(
      toolbarHeight: appBarHeight,
      backgroundColor: appBar.backgroundColor,
      elevation: appBar.elevation,
      title: appBar.title,
      shape: appBar.shape,
      leading: IconButton(
        icon:  Icon(Icons.arrow_back, size: appBarHeight! * 0.3),
        tooltip: 'Return Icon',
        onPressed: returnIconAction,
      ),
    );
  }
}
