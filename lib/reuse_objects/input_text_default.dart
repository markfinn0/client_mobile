// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application/screens/benefits_screens/put_balance_in_account.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_application/reuse_objects/color_theme.dart';
import 'package:flutter_application/reuse_objects/screen_dimensions.dart';
ThemeData theme = apptheme;



class UserInputBodyConstructor extends StatelessWidget {
  
  double? widhtText ;
  double? heightText ;
  UserInputBodyConstructor({Key? key, 
  this.widhtText,
  this.heightText
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    ScreenInfo screenInfo = getScreenInformation(context);
    widhtText = screenInfo.screenWidth * 0.8;
    heightText ??= 20;
    return Container( width: widhtText,
      //height: heightText,
      child: Column( //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text( 
                "Digite o valor: ",
                style: GoogleFonts.getFont(
                  'Lato',
                  fontSize: heightText! * 0.8,
                  color: theme.colorScheme.onPrimary
                ),
              )
            ],
          ),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              child: TextField( textAlign: TextAlign.end,
                decoration: InputDecoration(
                  //Icons.attach_money_sharp
                  //Icon(Icons.attach_money_sharp, color: Colors.green,)
                  //Icon(Icons.money_off, color: Colors.red,)
                  prefixIcon: Icon(Icons.attach_money_sharp, color: Colors.green,),
                  border: OutlineInputBorder(),
                  hintText: "100,00", hintStyle: GoogleFonts.getFont( 
                  'Lato',
                  fontSize: heightText! * 0.8,
                  color: theme.colorScheme.onPrimary
                ),
                  contentPadding: EdgeInsets.symmetric(vertical: heightText!),
                  
                ),
              
              ))
        ],
      ),
    );
  }
}
