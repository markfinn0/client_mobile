import 'package:flutter/material.dart';
import 'package:flutter_application/reuse_objects/label_historic_benefits_information.dart';
import 'package:flutter_application/reuse_objects/color_theme.dart';
import 'package:flutter_application/reuse_objects/app_bar_default.dart';
import 'package:flutter_application/reuse_objects/screen_dimensions.dart';
import 'package:google_fonts/google_fonts.dart';
ThemeData theme = apptheme;

// class MyBenefitsHistoricPage extends StatelessWidget {
//   const MyBenefitsHistoricPage({Key? key}) : super(key: key);
//   //decorater
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Benefits Historic page',
//       home: MyBenefitsHistoricPageConstructor(),
//     );
//   }
// }

class MyBenefitsHistoricPageConstructor extends StatelessWidget {
  const MyBenefitsHistoricPageConstructor({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppBar myAppBar = MyAppBarPageConstructorWithReturn.buildAppBar(
        context, title: "Historico Beneficios", () {
          Navigator.of(context).pop();
        });
    double? appBarHeight = myAppBar.toolbarHeight;
    ScreenInfo screenInfo = getScreenInformation(context);
    return Scaffold(
      appBar: myAppBar,
      body: MyBenefitsHistoricBodyPageConstructor(
        valueBenefits: "20.000,00",
      ),
    );
  }
}

class MyBenefitsHistoricBodyPageConstructor extends StatelessWidget {
  final String valueBenefits;
  double? historicBodyHeight;
  MyBenefitsHistoricBodyPageConstructor(
      {Key? key, required this.valueBenefits, this.historicBodyHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenInfo screenInfo = getScreenInformation(context);
    historicBodyHeight ??= screenInfo.screenHeight - 70;
    double paddingHeight = (historicBodyHeight! /9) * 0.15;
    double buttonHeight = (historicBodyHeight! - paddingHeight * 8) / 7;
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          height: buttonHeight,
          padding: EdgeInsets.only(left: 20, bottom: paddingHeight, top: paddingHeight, right: 20),
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
        Container( padding: EdgeInsets.only(bottom: paddingHeight, top: paddingHeight),
          child: Column(
            children: [
              LabelBenefitsHistoric( heightInfo: buttonHeight* 0.25,
                textLabel: "Marisa | Cliente Premium",
                data: "27/11/2001",
                valor: "200,00",
              ),
              LabelBenefitsHistoric(heightInfo: buttonHeight* 0.25,
                textLabel: "Marisa | Cliente Premium",
                data: "27/11/2001",
                valor: "200,00",
              ),
              LabelBenefitsHistoric(heightInfo: buttonHeight* 0.25,
                textLabel: "Marisa | Cliente Premium",
                data: "27/11/2001",
                valor: "200,00",
              ),
              LabelBenefitsHistoric(heightInfo: buttonHeight* 0.25,
                textLabel: "Marisa | Cliente Premium",
                data: "27/11/2001",
                valor: "200,00",
              ),
              LabelBenefitsHistoric(heightInfo: buttonHeight* 0.25,
                textLabel: "Marisa | Cliente Premium",
                data: "27/11/2001",
                valor: "200,00",
              ),
              LabelBenefitsHistoric(heightInfo: buttonHeight* 0.25,
                textLabel: "Marisa | Cliente Premium",
                data: "27/11/2001",
                valor: "200,00",
              ),
              LabelBenefitsHistoric(heightInfo: buttonHeight* 0.25,
                textLabel: "Marisa | Cliente Premium",
                data: "27/11/2001",
                valor: "200,00",
              ),
            ],
          ),
        )
      ],
    ));
  }
}
