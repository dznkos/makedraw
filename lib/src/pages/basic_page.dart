import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final estiloTitulo = TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(color: Colors.grey, fontSize: 13.0);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            _crearImagen(),
            _crearTitulo(context),
            //close card
            _crearIconos(),
            _crearTexto(),
          ],
        ) ,
      ),
    );
  }

  Widget _crearImagen(){
    return Image(
          fit: BoxFit.contain,
          height: 190.0,
          image: NetworkImage('https://dsx.weather.com//util/image/w/gettyimages-611317222.jpg?v=ap&w=980&h=551&api=7db9fe61-7414-47b5-9871-e17d87b8b6a0')
      );

  }

  Widget _crearTitulo(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Oeschinen Lake Campground', style: estiloTitulo,),
                    SizedBox(height: 6.0),
                    Text('Kandersteg, Switzerland', style: estiloSubtitulo,),
                  ],
                )
            ),
            IconButton(
                icon: Icon( Icons.star, color: Colors.red, size: 25.0),
                onPressed: () {
                  Navigator.pushNamed(context, 'middle');
                },
            ),
            Text('41', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }

  Widget _crearIconos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.phone, color: Colors.blueAccent,),
                  Text('CALL', style: TextStyle(color: Colors.blueAccent),)
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.near_me, color: Colors.blueAccent,),
                  Text('ROUTE', style: TextStyle(color: Colors.blueAccent),)
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.share, color: Colors.blueAccent,),
                  Text('SHARE', style: TextStyle(color: Colors.blueAccent),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearTexto(){
    return SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30.0),
          child: Text('Rollie Schmitten will be signing his book on the early history of Lake Wenatchee at the Midway Market, this Saturday 10 to 12. The Midway has copies of the book to purchase. The book covers early settlers, loggers and history of many local institutions including the camps, schools, fish hatchery and a number of stories of local lore, including the mystery of lost Lake Wenatchee Ski area.')
      ),
    );
  }

}
