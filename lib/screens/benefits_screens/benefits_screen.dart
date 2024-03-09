import 'package:flutter/material.dart';
import 'package:flutter_application/reuse_objects/button_home.dart';
import 'package:flutter_application/reuse_objects/app_bar_default.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBenefitsPage extends StatelessWidget {
  const MyBenefitsPage({Key? key}) : super(key: key);
  //decorater
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Benefits page',
      home: MyBenefitsPageConstructor(),
    );
  }
}

class MyBenefitsPageConstructor extends StatelessWidget {
  const MyBenefitsPageConstructor({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBarPageConstructorWithReturn.buildAppBar(
            context, "Meus Beneficios", () {}),
        body: MyBenefitsBodyPageConstructor(
          valueBenefits: "40.000,00",
        ));
  }
}

class MyBenefitsBodyPageConstructor extends StatelessWidget {
  final String valueBenefits;
  const MyBenefitsBodyPageConstructor({Key? key, required this.valueBenefits})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, bottom: 15, top: 15, right: 20),
      child: Column(
        children: <Widget>[
          Container( padding: EdgeInsets.only(left: 20, bottom: 15, top: 15, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Saldo Beneficios",
                        style: GoogleFonts.getFont('Lato',
                            fontSize: 30,
                            textStyle: TextStyle(color: Color(0xFF333333)))),
                  ],
                ),
                Row(
                  children: [
                    Text("R\$ $valueBenefits",
                        style: GoogleFonts.getFont('Lato',
                            fontSize: 20,
                            textStyle: TextStyle(color: Color(0xFF333333)))),
                  ],
                ),
              ],
            ),
          ),
          
          Container( padding: EdgeInsets.only(left: 20, bottom: 15, top: 15, right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [UserButtonBodyConstructor(localIcon: 'assets/asset/imgs/accounts_screens/beneficios.png', textLabel: "Sacar Beneficios", widthBottton: 115.0,)],),
          ),
          Container( padding: EdgeInsets.only(left: 20, bottom: 15, top: 15, right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [UserButtonBodyConstructor(localIcon: 'assets/asset/imgs/benefits_screens/cash_out_benefits.png', textLabel: "Sacar Beneficios", widthBottton: 115.0,)],),
          ),
          Container( padding: EdgeInsets.only(left: 20, bottom: 15, top: 15, right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [UserButtonBodyConstructor(localIcon: 'assets/asset/imgs/accounts_screens/beneficios.png', textLabel: "Beneficios", widthBottton: 115.0,)],),
          ),
          Container( padding: EdgeInsets.only(left: 20, bottom: 15, top: 15, right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [UserButtonBodyConstructor(localIcon: 'assets/asset/imgs/benefits_screens/benefits_historic.png', textLabel: "Historico de Beneficios", widthBottton: 115.0,)],),
          ),
        
        ],
      ),
    );
  }
}
