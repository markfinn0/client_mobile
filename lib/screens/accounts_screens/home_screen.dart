import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application/reuse_objects/button_home.dart';
import 'package:flutter_application/reuse_objects/screen_dimensions.dart';
import 'package:flutter_application/screens/benefits_screens/benefits_screen.dart';
import 'package:flutter_application/screens/cards_screens/squelet_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application/reuse_objects/color_theme.dart';

//component without state - statelessswidget
ThemeData theme = apptheme;

class MyHomePageConstructor extends StatelessWidget {
  final String name;
  const MyHomePageConstructor({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenInfo screenInfo = getScreenInformation(context);
    double appBarHeight = screenInfo.screenHeight * 0.2;
    double sizeContainerInfoUser = appBarHeight * 0.7;
    return Scaffold(
  appBar: PreferredSize(
    preferredSize: Size.fromHeight(appBarHeight),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30.0),
        ),
        color: theme.colorScheme.secondary,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30.0),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
          child: Container(
            color: Colors.white.withOpacity(0.1),
            child: Container(
              padding: EdgeInsets.only(left: 5, right: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      'assets/asset/imgs/accounts_screens/user_icon.png',
                      width: sizeContainerInfoUser * 0.7,
                      height: sizeContainerInfoUser * 0.7,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: sizeContainerInfoUser * 0.6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/asset/imgs/accounts_screens/message.png",
                          width: sizeContainerInfoUser * 0.2,
                          height: sizeContainerInfoUser * 0.2,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Olá, $name',
                          style: GoogleFonts.getFont(
                            'Lato',
                            fontSize: sizeContainerInfoUser * 0.2,
                            textStyle: TextStyle(
                              color: theme.colorScheme.onSecondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  ),
  body: UserBodyConstructor(
    saldo: '30.000,00',
    bodyHeight: screenInfo.screenHeight - appBarHeight,
  ),
);
  }
}

class UserBodyConstructor extends StatelessWidget {
  final String saldo;
  double? bodyHeight;
  UserBodyConstructor({Key? key, required this.saldo, this.bodyHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenInfo screenInfo = getScreenInformation(context);

    bodyHeight ??= screenInfo.screenHeight - 120;
    double paddingHeight = (bodyHeight! / 5) * 0.2;
    double buttonHeight = (bodyHeight! - paddingHeight * 4) / 5;

    return Container(
      height: bodyHeight! + paddingHeight,
      alignment: Alignment.center,
      padding: EdgeInsets.only(
          left: 20, bottom: paddingHeight, top: paddingHeight, right: 20),
      child: Column(
        children: <Widget>[
          //saldo conta e valor
          Container(
            height: buttonHeight + paddingHeight,
            padding: EdgeInsets.only(
                left: 20, bottom: paddingHeight, top: paddingHeight, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Saldo Conta',
                      style: GoogleFonts.getFont(
                        'Lato',
                        fontSize: buttonHeight * 0.30,
                        textStyle:
                            TextStyle(color: theme.colorScheme.onPrimary),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'R\$ $saldo',
                      style: GoogleFonts.getFont(
                        'Lato',
                        fontSize: buttonHeight * 0.20,
                        textStyle:
                            TextStyle(color: theme.colorScheme.onPrimary),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          // os tres botoes juntos (movimentar - cartao - conta)
          Container(
            width: screenInfo.screenWidth * 0.8,
            height: buttonHeight + paddingHeight,

            //padding: EdgeInsets.only(bottom:paddingHeight, top: paddingHeight),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    UserButtonBodyConstructor(
                        localIcon:
                            'assets/asset/imgs/accounts_screens/movimentar.png',
                        heightButton: buttonHeight * 0.8,
                        textLabel: 'Movimentar',
                        widthButton: 80.0,
                        pageNavigate: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MyBenefitsPageConstructorConstructor()),
                          );
                        })
                  ],
                ),
                Column(
                  children: [
                    UserButtonBodyConstructor(
                        localIcon:
                            'assets/asset/imgs/accounts_screens/card.png',
                        heightButton: buttonHeight * 0.8,
                        textLabel: 'Cartão',
                        widthButton: 80.0,
                        pageNavigate: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MyBenefitsPageConstructorConstructor()),
                          );
                        })
                  ],
                ),
                Column(
                  children: [
                    UserButtonBodyConstructor(
                        localIcon:
                            'assets/asset/imgs/accounts_screens/user_account.png',
                        heightButton: buttonHeight * 0.8,
                        textLabel: 'Conta',
                        widthButton: 80.0,
                        pageNavigate: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MyBenefitsPageConstructorConstructor()),
                          );
                        })
                  ],
                )
              ],
            ),
          ),

          // acessar beneficios
          Container(
            height: buttonHeight + paddingHeight,
            //padding: EdgeInsets.only( bottom:paddingHeight, top: paddingHeight),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserButtonBodyConstructor(
                    localIcon:
                        'assets/asset/imgs/accounts_screens/beneficios.png',
                    heightButton: buttonHeight * 0.8,
                    textLabel: "Acessar Beneficios",
                    pageNavigate: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MyBenefitsPageConstructorConstructor()),
                      );
                    })
              ],
            ),
          ),
          // Ultima Transação
          Container(
            height: buttonHeight + paddingHeight,
            //padding: EdgeInsets.only( bottom:paddingHeight, top: paddingHeight),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserButtonBodyConstructor(
                    localIcon:
                        'assets/asset/imgs/accounts_screens/beneficios.png',
                    heightButton: buttonHeight * 0.8,
                    textLabel: "Ultima Transação",
                    pageNavigate: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MyBenefitsPageConstructorConstructor()),
                      );
                    })
              ],
            ),
          )
        ],
      ),
    );
    //);
  }
}
