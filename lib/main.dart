import 'package:flutter/material.dart';
import 'package:pruebas_app/src/pages/basic_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prueba 1',
      initialRoute: 'basico',
      routes: {
        'basico' : ( BuildContext context) => BasicPage(),
      },

    );

  }
}
