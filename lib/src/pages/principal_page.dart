import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PrincipalPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
            diseno(),
            mainGrid()
        ],
      ),
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
      height: double.infinity,
      width: double.infinity,
      //color: Colors.blue,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              child: _tituloGrid(),
              padding: EdgeInsets.symmetric(horizontal: 50)
          ),
          //_iconsGrid()
        ],
      ),
    );

  }

  Widget _tituloGrid() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Text('Clasificacion transacciones', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(height: 10,),
            Text('Classify thsi trasaction into a particular cateogy',textAlign: TextAlign.left, style: TextStyle(fontSize: 16, color: Colors.white,),),




          ],
    );
  }

  Widget _iconsGrid() {

  }




}
