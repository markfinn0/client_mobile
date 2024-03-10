// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application/screens/benefits_screens/put_balance_in_account.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_application/reuse_objects/color_theme.dart';
import 'package:flutter_application/reuse_objects/screen_dimensions.dart';
ThemeData theme = apptheme;

class UserInputBodyConstructor extends StatelessWidget {
  
  double? widhtText ;
  UserInputBodyConstructor({Key? key, this.widhtText}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    ScreenInfo screenInfo = getScreenInformation(context);
    widhtText = screenInfo.screenWidth * 0.8;

    return Container( width: widhtText,
      child: Column( //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text( 
                "Digite o valor: ",
                style: GoogleFonts.getFont(
                  'Lato',
                  fontSize: 20,
                  color: theme.colorScheme.onPrimary
                ),
              )
            ],
          ),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              child: TextField( 
                decoration: InputDecoration(  
                  border: OutlineInputBorder(),
                  hintText: "Insira o Texto",
                  
                ),
              ))
        ],
      ),
    );
  }
}
