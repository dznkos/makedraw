import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pruebas_app/src/pages/basic_page.dart';
import 'package:pruebas_app/src/pages/middle_page.dart';
import 'package:pruebas_app/src/pages/principal_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prueba 1',
      initialRoute: 'middle',
      routes: {
        'basico' : ( BuildContext context) => BasicPage(),
        'middle' : ( BuildContext context) => MiddlePage(),
        'princ'  : ( BuildContext context) => PrincipalPage(),
      },

    );

  }
}
