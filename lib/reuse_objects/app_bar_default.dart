import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
class MyAppBarPageConstructor {
  static AppBar buildAppBar(BuildContext context, String title) {
    return AppBar(
        toolbarHeight: 70,
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            // bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
        ),
        backgroundColor: Color(0xFF008080),
        
        title: Text(title,
            style: GoogleFonts.getFont('Lato',
                fontSize: 20, textStyle: TextStyle(color: Color(0xFF333333)))),
      );
  }
}

class MyAppBarPageConstructorWithReturn extends MyAppBarPageConstructor{

  static AppBar buildAppBar(BuildContext context, String title, Function()? returnIconAction) {
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