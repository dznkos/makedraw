import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class PrincipalPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _fondoApp(){

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
                Color.fromRGBO(52, 54, 101, 1.0),
                Color.fromRGBO(35, 37, 57, 1.0)
              ]
          )
      ),
    );


    final cajaRosa = Transform.rotate(
        angle: -pi / 3.5,
        child: Container(
          height: 300.0,
          width: 360.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(210, 20, 88, 1.0),
                    Color.fromRGBO(241, 150, 64, 1.0)
                  ]
              )
          ),
        )
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
            top: -80.0,
            left: -90,
            child: cajaRosa
        )
      ],
    );

  }

  Widget _titulos() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Pizzeria Martucci', style: TextStyle( color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('Classify this transaction into a particular category', style: TextStyle( color: Colors.white, fontSize: 18.0 )),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context){

    return Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
            primaryColor: Colors.pinkAccent,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1.0))
            )
        ),
        child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon( Icons.calendar_today, size: 30.0,),
                title: Container(),
              ),
              BottomNavigationBarItem(
                icon: Icon( Icons.bubble_chart, size: 30.0,),
                title: Container(),
              ),
              BottomNavigationBarItem(
                icon: Icon( Icons.supervised_user_circle, size: 30.0,),
                title: Container(),
              )
            ]
        )
    );
  }

  Widget _botonesRedondeados() {

    return Table(
            children: [
              TableRow(
                  children: [
                    _crearBotonRedondeado( Colors.blue, Icons.add_shopping_cart, 'Delivery' ),
                    _crearBotonRedondeado( Colors.purpleAccent, Icons.whatshot, 'Ofertas' ),
                  ]
              ),
              TableRow(
                  children: [
                    _crearBotonRedondeado( Colors.pinkAccent, Icons.perm_identity, 'Registrarme' ),
                    _crearBotonRedondeado( Colors.orange, Icons.shopping_cart, 'Pedidos' ),
                  ]
              ),

            ],
    );
  }

  Widget _crearBotonRedondeado( Color color, IconData icono, String texto ) {

    final _containButton = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox( height: 5.0 ),
        CircleAvatar(
          backgroundColor: color,
          radius: 35.0,
          child: Icon( icono, color: Colors.white, size: 30.0 ),
        ),
        Text( texto , style: TextStyle( color: color )),
        SizedBox( height: 5.0 )
      ],
    );

    return  Stack(
      children:[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 10.0,sigmaX: 10.0) ,
              child: Container(
                  height: 180.0,
                  width: 170,
                  //margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(62, 66, 107, 0.7),
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: _containButton
              ),
            ),
          ),
        ),
      ]
    );
  }







}
