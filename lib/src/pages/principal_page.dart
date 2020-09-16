import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PrincipalPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
            diseno(),

          SingleChildScrollView(
            child: Column(
              children: [
                _tituloGrid(),
                mainGrid(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context){

    return new Theme(
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

  
  Widget diseno() {
    
  final box = Transform.rotate(
      angle: -pi / 4.5,
      child: Container(
          width: 360,
          height: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(252, 97, 255, 1.0),
                Color.fromRGBO(252, 210, 185, 1.0),
              ],
            ),
          ),
        ),
  );

  final gradientStyle = Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
        )
    ),
  );

  return Stack(
      children: <Widget>[
        gradientStyle,
        Positioned(
            top: -100,
            left: -10,
            child: box)
      ],
  );

  }


  Widget mainGrid() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Table(
            children: [
              TableRow(
                children: [
                    _crearBotonGrid(),
                    _crearBotonGrid()
                ]
              ),
              TableRow(
                  children: [
                    _crearBotonGrid(),
                    _crearBotonGrid()
                  ]
              ),
              TableRow(
                  children: [
                    _crearBotonGrid(),
                    _crearBotonGrid()
                  ]
              ),
            ],
        ),
    );
  }

  Widget _crearBotonGrid(){
    return Container(
      height: 130,
      margin: EdgeInsets.all(10.0) ,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.8),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          CircleAvatar(
            backgroundColor: Colors.pinkAccent,
            radius: 20,
            child: Icon( Icons.phone, color: Colors.blue, size: 20,),
          ),
          Text('Datos', style: TextStyle( color: Colors.pinkAccent),),
          SizedBox(height: 1),

        ],
      ),
    );
  }

  Widget _tituloGrid() {
    return Container(
      padding: EdgeInsets.only(right: 45, left: 20, bottom: 15 ),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Text('Clasificacion transacciones', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
              SizedBox(height: 10,),
              Container(
                width: 220,
                //color: Colors.pink,
                child: Text('Classify thsi trasaction into a particular cateogy',maxLines: 2, style: TextStyle(fontSize: 16, color: Colors.white,),),
              )

            ],
      ),
    );
  }





}
