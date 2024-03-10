import 'package:flutter/material.dart';
import 'package:flutter_application/reuse_objects/button_home.dart';
import 'package:google_fonts/google_fonts.dart';

//component without state - statelessswidget
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  //decorater
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home page',
      home: MyHomePageConstructor(name: 'Vitor Manoel'),
    );
  }
}

class MyHomePageConstructor extends StatelessWidget {
  final String name;
  const MyHomePageConstructor({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0.0, // Defina a elevação como 0 para remover a sombra.
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30.0),
          ),
        ),
        backgroundColor: Color(0xFFed145b), // Torna a AppBar transparente.
        flexibleSpace: Container(
          padding: EdgeInsets.only(left: 5, bottom: 10, top: 10, right: 20),
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left:20,right: 20),
                child: 
              Align(
              
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/asset/imgs/accounts_screens/user_icon.png',
                  width: 70,
                  height: 70,
                ),
              ),),
              // Adiciona um espaço entre a imagem e o texto
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Olá, $name',
                  style: GoogleFonts.getFont(
                    'Lato',
                    fontSize: 30,
                    textStyle: TextStyle(color: Color.fromARGB(255, 254, 255, 255)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: 
      UserBodyConstructor(saldo: '30.000,00'),
      backgroundColor: Color.fromARGB(255, 254, 255, 255),
    );
  }
}



class UserBodyConstructor extends StatelessWidget {
  final String saldo;

  const UserBodyConstructor({Key? key, required this.saldo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.only(left: 20, bottom: 20, top: 20, right: 20),
      child: Column(
        
        children: <Widget>[
          //saldo conta e valor
          Container( padding: EdgeInsets.only(left: 20, bottom: 20, top: 20, right: 20),
            child: Column(
              
              children: [
                
                Row(
                  
                  children: [
                    Text(
                      'Saldo Conta',
                      style: GoogleFonts.getFont(
                        'Lato',
                        fontSize: 30,
                        textStyle: TextStyle(color: Color(0xFF333333)),
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
                        fontSize: 20,
                        textStyle: TextStyle(color: Color(0xFF333333)),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          // os tres botoes juntos (movimentar - cartao - conta)
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 20, top: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    UserButtonBodyConstructor(
                      localIcon: 'assets/asset/imgs/accounts_screens/movimentar.png',
                      textLabel: 'Movimentar',
                    )
                  ],
                ),
                Column(
                  children: [
                    UserButtonBodyConstructor(
                      localIcon: 'assets/asset/imgs/accounts_screens/card.png',
                      textLabel: 'Cartão',
                    )
                  ],
                ),
                Column(
                  children: [
                    UserButtonBodyConstructor(
                      localIcon: 'assets/asset/imgs/accounts_screens/user_account.png',
                      textLabel: 'Conta',
                    )
                  ],
                )
              ],
            ),
          ),
          // acessar beneficios
          Container( padding: EdgeInsets.only(left: 20, bottom: 20, top: 20, right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [UserButtonBodyConstructor(localIcon: 'assets/asset/imgs/accounts_screens/beneficios.png', textLabel: "Acessar Beneficios", widthBottton: 115.0,)],),
          ),
          // Ultima Transação
          Container( padding: EdgeInsets.only(left: 20, bottom: 20, top: 20, right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [UserButtonBodyConstructor(localIcon: 'assets/asset/imgs/accounts_screens/beneficios.png', textLabel: "Ultima Transação", widthBottton: 115.0,)],),
          )
        ],
      ),
    );
    //);
  }
}

