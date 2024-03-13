import "package:flutter/material.dart";
import "package:flutter_application/reuse_objects/screen_dimensions.dart";
import "package:google_fonts/google_fonts.dart";
import "color_theme.dart";

class MyAppBarPageConstructor {
  static AppBar buildAppBar(BuildContext context,
    {Color? backgroundColorAppBar, 
    Color? fontColorAppBar,
    double? appBarHeight}) {

    ThemeData theme = apptheme;
    backgroundColorAppBar ??= theme.colorScheme.secondary;
    fontColorAppBar ??=  theme.colorScheme.onSecondary;

    ScreenInfo screenInfo = getScreenInformation(context);
    appBarHeight ??= screenInfo.screenHeight * 0.1;
    return 
    
    AppBar(
      toolbarHeight: appBarHeight,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          // bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      
      backgroundColor: backgroundColorAppBar,
      
    );
  }
}

class MyAppBarPageConstructorWithTitle extends MyAppBarPageConstructor {
  static AppBar buildAppBar(
      BuildContext context, 
      {
        String? title, 
        Color? backgroundColorAppBar, 
        Color? fontColorAppBar,
        double? appBarHeight,
        }) {

    AppBar appBar = MyAppBarPageConstructor.buildAppBar(context);
  
    appBarHeight ??= appBar.toolbarHeight;
    return AppBar(
      toolbarHeight: appBarHeight,
      backgroundColor: appBar.backgroundColor,
      elevation: appBar.elevation,
      title: title != null
          ? Text(
              title,
              style: GoogleFonts.getFont(
                'Lato',
                fontSize: appBarHeight! * 0.3,
                textStyle: TextStyle(color: fontColorAppBar),
              ),
            )
          : null,
      shape: appBar.shape,
      
    );
  }
}

class MyAppBarPageConstructorWithReturn extends MyAppBarPageConstructorWithTitle {
  static AppBar buildAppBar(
      BuildContext context, Function()? returnIconAction, {
        String? title,
        Color? backgroundColorAppBar, 
        Color? fontColorAppBar,
        double? appBarHeight,
        }) {

    AppBar appBar = MyAppBarPageConstructorWithTitle.buildAppBar(context, title: title);
  
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

class MyAppBarPageConstructorWithActionIcon extends MyAppBarPageConstructorWithReturn {
  static AppBar buildAppBar(
      BuildContext context,  Function()? returnIconAction, {
        String? title,
        Color? backgroundColorAppBar, 
        Color? fontColorAppBar,
        double? appBarHeight,
        Widget? iconAction
        }) {

    AppBar appBar = MyAppBarPageConstructorWithReturn.buildAppBar(context, returnIconAction, title: title);
  
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
      actions: iconAction != null ? [iconAction] : null,
    
            );
  }
}
class MyAppBarPageConstructorWithSearchBar extends MyAppBarPageConstructorWithActionIcon{
  static AppBar buildAppBar(
      BuildContext context,  Function()? returnIconAction, {
        Widget ? SearchBar,
        Color? backgroundColorAppBar, 
        Color? fontColorAppBar,
        double? appBarHeight,
        Widget? iconAction
        }) {

    AppBar appBar = MyAppBarPageConstructorWithActionIcon.buildAppBar(context, returnIconAction);
  
    appBarHeight ??= appBar.toolbarHeight;
    return AppBar(
      toolbarHeight: appBarHeight,
      backgroundColor: appBar.backgroundColor,
      elevation: appBar.elevation,
      title: Container(child: SearchBar != null ? SearchBar : null),
      shape: appBar.shape,
      leading: IconButton(
        icon:  Icon(Icons.arrow_back, size: appBarHeight! * 0.3),
        tooltip: 'Return Icon',
        onPressed: returnIconAction,
      ),
      actions: iconAction != null ? [iconAction] : null,
    
            );
  }
}
