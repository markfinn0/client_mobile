import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserButtonBodyConstructor extends StatelessWidget {
  final String localIcon;
  final String textLabel;
  final double heightBotton;
  final double widthBottton;

  const UserButtonBodyConstructor(
      {Key? key, required this.localIcon, required this.textLabel, this.heightBotton = 6.0, this.widthBottton = 3.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: widthBottton, vertical: heightBotton),
          child: Image.asset('$localIcon', width: 50, height: 50),
        ),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 4.0,
            backgroundColor: Color(0xFF008080)),
      ),
      Text('$textLabel',
          style: GoogleFonts.getFont(
            'Lato',
            fontSize: 15,
            textStyle: TextStyle(color: Color(0xFF333333)),
          ))
    ]);
  }
}