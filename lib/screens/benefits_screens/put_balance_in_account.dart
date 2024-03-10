import 'package:flutter/material.dart';
import 'package:flutter_application/reuse_objects/button_home.dart';
import 'package:flutter_application/reuse_objects/app_bar_default.dart';
import 'package:google_fonts/google_fonts.dart';
class MyBenefitsPutBalanceAccountPage extends StatelessWidget {
  const MyBenefitsPutBalanceAccountPage({Key? key}) : super(key: key);
  //decorater
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Benefits page',
      home: MyBenefitsPutBalanceAccountPageConstructor(),
    );
  }
}

class MyBenefitsPutBalanceAccountPageConstructor extends StatelessWidget {
  
  const MyBenefitsPutBalanceAccountPageConstructor({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBarPageConstructorWithReturn.buildAppBar(
            context, "Meus Beneficios", () {}),
      body: MyBenefitsPutBalanceAccountBodyPageConstructor(valueBenefits: "40.000,00"),

    );
  }
}

class MyBenefitsPutBalanceAccountBodyPageConstructor extends StatelessWidget {
  final String valueBenefits;
  const MyBenefitsPutBalanceAccountBodyPageConstructor({Key? key, required this.valueBenefits})
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
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [UserButtonBodyConstructor(localIcon: 'assets/asset/benefits_put_balance_account_screen/validated.png', textLabel: "Confirmar", widthBottton: 115.0,)],),
          )
          
        
        ],
      ),
    );
  }
}
