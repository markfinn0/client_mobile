import 'package:flutter/material.dart';
import 'package:flutter_application/reuse_objects/button_home.dart';
import 'package:flutter_application/reuse_objects/app_bar_default.dart';
import 'package:flutter_application/reuse_objects/screen_dimensions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application/reuse_objects/color_theme.dart';
import 'package:flutter_application/reuse_objects/input_text_default.dart';

ThemeData theme = apptheme;
ScreenInfo screenInfo = screenInfo;
class MyBenefitsPutBalanceAccountPage extends StatelessWidget {
  const MyBenefitsPutBalanceAccountPage({Key? key}) : super(key: key);
  //decorater
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title: 'Benefits page',
      home:MyBenefitsPutBalanceAccountPageConstructor(benefitsValue: "10.000,00",));
  }
}

class MyBenefitsPutBalanceAccountPageConstructor extends StatelessWidget {
  final String benefitsValue;
  const MyBenefitsPutBalanceAccountPageConstructor({Key? key, required this.benefitsValue})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBarPageConstructorWithReturn.buildAppBar(
          context, "Meus Beneficios", () {}),
      body: MyBenefitsPutBalanceAccountBodyPageConstructor(
          valueBenefits: "$benefitsValue"),
    );
  }
}

class MyBenefitsPutBalanceAccountBodyPageConstructor extends StatelessWidget {
  final String valueBenefits;
  const MyBenefitsPutBalanceAccountBodyPageConstructor(
      {Key? key, required this.valueBenefits})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 20, bottom: 15, top: 15, right: 20),
        child: Column(
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(left: 20, bottom: 15, top: 15, right: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Saldo Beneficios",
                              style: GoogleFonts.getFont('Lato',
                                  fontSize: 30,
                                  textStyle: TextStyle(
                                      color: theme.colorScheme.onPrimary))),
                        ],
                      ),
                      Row(
                        children: [
                          Text("R\$ $valueBenefits",
                              style: GoogleFonts.getFont('Lato',
                                  fontSize: 20,
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
                        height: 20,
                        width: 20,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 100.0, top: 100.0),
              child: UserInputBodyConstructor(),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 20, bottom: 15, top: 15, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserButtonBodyConstructor(
                    localIcon:
                        'assets/asset/imgs/benefits_screens/validated.png',
                    textLabel: "Confirmar",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
