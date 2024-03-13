import 'package:flutter/material.dart';
import 'package:flutter_application/reuse_objects/button_home.dart';
import 'package:flutter_application/reuse_objects/app_bar_default.dart';
import 'package:flutter_application/reuse_objects/screen_dimensions.dart';
import 'package:flutter_application/screens/benefits_screens/all_benefits_companies.dart';
import 'package:flutter_application/screens/benefits_screens/benefits_historic.dart';
import 'package:flutter_application/screens/benefits_screens/put_balance_in_account.dart';
import 'package:flutter_application/screens/cards_screens/squelet_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application/reuse_objects/color_theme.dart';

ThemeData theme = apptheme;

// class MyBenefitsPageConstructor extends StatelessWidget {
//   const MyBenefitsPageConstructor({Key? key}) : super(key: key);
//   //decorater
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Benefits page',
//       home: MyBenefitsPageConstructorConstructor(),
//     );
//   }
// }

class MyBenefitsPageConstructorConstructor extends StatelessWidget {
  const MyBenefitsPageConstructorConstructor({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenInfo screenInfo = getScreenInformation(context);
    AppBar myAppBar = MyAppBarPageConstructorWithReturn.buildAppBar(
        context, title: "Meus Beneficios", () {
      Navigator.of(context).pop();
    });
    double? appBarHeight = myAppBar.toolbarHeight;
    return Scaffold(
        appBar: myAppBar,
        body: MyBenefitsBodyPageConstructor(
          valueBenefits: "40.000,00",
          myBenefitsBodyHeight: screenInfo.screenHeight - appBarHeight!,
          
        ));
  }
}

class MyBenefitsBodyPageConstructor extends StatelessWidget {
  final String valueBenefits;
  double? myBenefitsBodyHeight;
  MyBenefitsBodyPageConstructor(
      {Key? key, required this.valueBenefits, this.myBenefitsBodyHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenInfo screenInfo = getScreenInformation(context);
    myBenefitsBodyHeight ??= screenInfo.screenHeight - 70;
    double paddingHeight = (myBenefitsBodyHeight! / 9) * 0.15;
    double buttonHeight = (myBenefitsBodyHeight! - paddingHeight * 8) / 7;

    return Container(
      height: myBenefitsBodyHeight,
      padding: EdgeInsets.only(
          left: 20, bottom: paddingHeight, top: paddingHeight, right: 20),
      child: Column(
        children: <Widget>[
          Container(
            height: buttonHeight,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Saldo Beneficios",
                        style: GoogleFonts.getFont('Lato',
                            fontSize: buttonHeight * 0.30,
                            textStyle:
                                TextStyle(color: theme.colorScheme.onPrimary))),
                  ],
                ),
                Row(
                  children: [
                    Text("R\$ $valueBenefits",
                        style: GoogleFonts.getFont('Lato',
                            fontSize: buttonHeight * 0.20,
                            textStyle:
                                TextStyle(color: theme.colorScheme.onPrimary))),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 20, bottom: paddingHeight, top: paddingHeight, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserButtonBodyConstructor(
                    localIcon:
                        'assets/asset/imgs/accounts_screens/beneficios.png',
                    heightButton: buttonHeight,
                    textLabel: "Sacar Beneficios",
                    pageNavigate: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyBenefitsHistoricPageConstructor()),
                      );
                    })
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 20, bottom: paddingHeight, top: paddingHeight, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserButtonBodyConstructor(
                    localIcon:
                        'assets/asset/imgs/benefits_screens/cash_out_benefits.png',
                    heightButton: buttonHeight,
                    textLabel: "Sacar Beneficios",
                    pageNavigate: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MyBenefitsPutBalanceAccountPageConstructor(benefitsValue: '20.000,00',)),
                      );
                    })
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 20, bottom: paddingHeight, top: paddingHeight, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserButtonBodyConstructor(
                    localIcon:
                        'assets/asset/imgs/accounts_screens/beneficios.png',
                    heightButton: buttonHeight,
                    textLabel: "Beneficios",
                    pageNavigate: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyAllBenefitsCompaniesPageConstructor()),
                      );
                    })
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 20, bottom: paddingHeight, top: paddingHeight, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserButtonBodyConstructor(
                    localIcon:
                        'assets/asset/imgs/benefits_screens/benefits_historic.png',
                    heightButton: buttonHeight,
                    textLabel: "Historico de Beneficios",
                    pageNavigate: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyBenefitsHistoricPageConstructor()),
                      );
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
