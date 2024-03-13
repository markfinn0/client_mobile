import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application/screens/accounts_screens/home_screen.dart';
import 'package:flutter_application/screens/benefits_screens/benefits_screen.dart';
import 'package:flutter_application/screens/benefits_screens/put_balance_in_account.dart';
import 'package:flutter_application/screens/benefits_screens/benefits_historic.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: MyHomePageConstructor(name: 'Vitor Manoel',),
      // Aqui você pode adicionar temas, rotas e outras configurações de MaterialApp
    );
  }
}
