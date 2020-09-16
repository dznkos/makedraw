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


          SingleChildScrollView(
            child: Column(
              children: [
                _tituloGrid(),
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
      width: double.infinity,
      child: Column(
        children: [
            _tituloGrid(),
            _iconsGrid(),
        ],
      ),
    );

  }

  Widget _tituloGrid() {
    return Container(
      padding: EdgeInsets.only(right: 45, left: 5),
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

  Widget _iconsGrid() {

    return Container(
      padding: EdgeInsets.all(30),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  width: 120,
                  height: 120,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  width: 120,
                  height: 120,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  width: 120,
                  height: 120,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: 120,
                  height: 120,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: 120,
                  height: 120,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: 120,
                  height: 120,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ],
          )

        ],
      ),


    );

  }




}
