import 'package:flutter/material.dart';
import 'package:flutter_application/reuse_objects/button_home.dart';
import 'package:flutter_application/reuse_objects/app_bar_default.dart';
import 'package:flutter_application/reuse_objects/screen_dimensions.dart';
import 'package:flutter_application/screens/benefits_screens/benefits_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application/reuse_objects/color_theme.dart';
import 'package:flutter_application/reuse_objects/input_text_default.dart';

ThemeData theme = apptheme;
ScreenInfo screenInfo = screenInfo;
// class MyBenefitsPutBalanceAccountPage extends StatelessWidget {
//   const MyBenefitsPutBalanceAccountPage({Key? key}) : super(key: key);
//   //decorater
//   @override
//   Widget build(BuildContext context) {
//    return MaterialApp(
//       title: 'Benefits page',
//       home:MyBenefitsPutBalanceAccountPageConstructor(benefitsValue: "10.000,00",));
//   }
// }

class MyBenefitsPutBalanceAccountPageConstructor extends StatelessWidget {
  final String benefitsValue;
  const MyBenefitsPutBalanceAccountPageConstructor({Key? key, required this.benefitsValue})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppBar myAppBar = MyAppBarPageConstructorWithReturn.buildAppBar(
          context, "Meus Beneficios", () {Navigator.pop(context);});
     double? appBarHeight = myAppBar.toolbarHeight;
     ScreenInfo screenInfo = getScreenInformation(context);
    return Scaffold(
      appBar: myAppBar,
      body: MyBenefitsPutBalanceAccountBodyPageConstructor(
          valueBenefits: "$benefitsValue",
          putBalanceAccountBodyHeight: screenInfo.screenHeight - appBarHeight!),
    );
  }
}

class MyBenefitsPutBalanceAccountBodyPageConstructor extends StatelessWidget {
  final String valueBenefits;
  double? putBalanceAccountBodyHeight;
  MyBenefitsPutBalanceAccountBodyPageConstructor(
      {Key? key, 
      required this.valueBenefits,
      this.putBalanceAccountBodyHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenInfo screenInfo = getScreenInformation(context);
    putBalanceAccountBodyHeight ??= screenInfo.screenHeight - 70;
    double paddingHeight = (putBalanceAccountBodyHeight! /9) * 0.15;
    double buttonHeight = (putBalanceAccountBodyHeight! - paddingHeight * 8) / 7;

    
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 20, bottom: paddingHeight, top: paddingHeight, right: 20),
        child: Column(
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(left: 20, bottom: paddingHeight, top: paddingHeight, right: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Saldo Beneficios",
                              style: GoogleFonts.getFont('Lato',
                                  fontSize: buttonHeight * 0.30,
                                  textStyle: TextStyle(
                                      color: theme.colorScheme.onPrimary))),
                        ],
                      ),
                      Row(
                        children: [
                          Text("R\$ $valueBenefits",
                              style: GoogleFonts.getFont('Lato',
                                  fontSize: buttonHeight * 0.20,
                                  textStyle: TextStyle(
                                      color: theme.colorScheme.onPrimary))),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Image.asset(
                        "assets/asset/imgs/benefits_screens/refresh.png",
                        height: buttonHeight * 0.3,
                        width: buttonHeight * 0.3,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: screenInfo.screenHeight*0.2, top: screenInfo.screenHeight*0.2),
              child: UserInputBodyConstructor(heightText: buttonHeight * 0.3,),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: 20, bottom: paddingHeight, top: paddingHeight, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserButtonBodyConstructor(
                    localIcon:
                        'assets/asset/imgs/benefits_screens/validated.png',
                    textLabel: "Confirmar",
                    heightButton: buttonHeight,
                  pageNavigate: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyBenefitsPageConstructorConstructor()),
    );
  })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
