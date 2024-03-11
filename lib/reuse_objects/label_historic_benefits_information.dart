import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/reuse_objects/screen_dimensions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color_theme.dart';
class LabelBenefitsHistoric extends StatelessWidget {
  
  final String textLabel;
  final String valor;
  final String data;
  double? heightInfo;


  LabelBenefitsHistoric(
      {Key? key, required this.textLabel,
      required this.valor,
      required this.data,
      this.heightInfo, 
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = apptheme;
    ScreenInfo screenInfo = getScreenInformation(context);
    heightInfo ??= screenInfo.screenHeight * 0.03;
    return Container( padding: EdgeInsets.only( left: 20, right: 20, bottom: heightInfo! *0.3, top: heightInfo! *0.3),
      child: Column(
        children: [
            Row( children: [
              Text("$textLabel",
              style: GoogleFonts.getFont('Lato',
                            fontSize: heightInfo,
                            textStyle: TextStyle(color: theme.colorScheme.onPrimary)))
            ],),
            Row(
              children: [
                Text("$data",
                style: GoogleFonts.getFont('Lato',
                            fontSize: heightInfo,
                            textStyle: TextStyle(color: theme.colorScheme.onPrimary))),
                            Spacer(),
                            Text(
                  "$valor", 
                  style: GoogleFonts.getFont('Lato',
                            fontSize: heightInfo,
                            textStyle: TextStyle(color: theme.colorScheme.onPrimary))
                )
              ],
            ),
       SizedBox(height: heightInfo! *0.5,), 
        Container(
          height: 1,
          width: screenInfo.screenWidth, 
          color: theme.colorScheme.onPrimary, 
        ), ],
       
      ),
      );
  }
}