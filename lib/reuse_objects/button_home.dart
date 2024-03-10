import 'package:flutter/material.dart';
import 'package:flutter_application/reuse_objects/screen_dimensions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color_theme.dart';
class UserButtonBodyConstructor extends StatelessWidget {
  final String localIcon;
  final String textLabel;
  double? heightButton;
  double? widthButton;

  UserButtonBodyConstructor(
      {Key? key, required this.localIcon, required this.textLabel, this.heightButton, this.widthButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = apptheme;
    ScreenInfo screenInfo = getScreenInformation(context);
    widthButton ??= screenInfo.screenWidth * 0.8;
    heightButton ??= 70.0;
    double widthImage = widthButton! * 0.8;
    double heightImage = heightButton! * 0.8;
    double textFontSize = heightButton! * 0.2;
    return Column(
      children: [
        SizedBox( width: widthButton,
        height: heightButton,
          child: ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
          
          child: Image.asset('$localIcon', width: widthImage, height: heightImage),
        ),
        
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 4.0,
            backgroundColor: theme.colorScheme.primary),
      ),
        ),
      
      
      Text('$textLabel',
          style: GoogleFonts.getFont(
            'Lato',
            fontSize: textFontSize,
            textStyle: TextStyle(color: theme.colorScheme.onPrimary),
          ))
    ]);
  }
}