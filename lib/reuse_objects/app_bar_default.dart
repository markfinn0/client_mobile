import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "color_theme.dart";

class MyAppBarPageConstructor {
  static AppBar buildAppBar(BuildContext context, String title,
    {Color? backgroundColorAppBar, Color? fontColorAppBar}) {
    ThemeData theme = apptheme;
    backgroundColorAppBar ??= theme.colorScheme.secondary;
    fontColorAppBar ??=  theme.colorScheme.onSecondary;
    return AppBar(
      toolbarHeight: 70,
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
              fontSize: 20,
              textStyle: TextStyle(color: fontColorAppBar))),
    );
  }
}

class MyAppBarPageConstructorWithReturn extends MyAppBarPageConstructor {
  static AppBar buildAppBar(
      BuildContext context, String title, Function()? returnIconAction, {Color? backgroundColorAppBar, Color? fontColorAppBar}) {
    
    // Chama o método buildAppBar da classe pai e armazena em uma variável
    AppBar appBar = MyAppBarPageConstructor.buildAppBar(context, title);
    return AppBar(
      toolbarHeight: appBar.toolbarHeight,
      backgroundColor: appBar.backgroundColor,
      elevation: appBar.elevation,
      title: appBar.title,
      shape: appBar.shape,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        tooltip: 'Return Icon',
        onPressed: returnIconAction,
      ),
    );
  }
}
