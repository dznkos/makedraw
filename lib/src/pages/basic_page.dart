import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final estiloTitulo = TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold);
    final estiloSubtitulo = TextStyle(color: Colors.grey, fontSize: 13.0);

    return Scaffold(
      body: Column(
        children: [
          Image.network('https://dsx.weather.com//util/image/w/gettyimages-611317222.jpg?v=ap&w=980&h=551&api=7db9fe61-7414-47b5-9871-e17d87b8b6a0'),
          Container(
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
                Icon( Icons.star, color: Colors.red, size: 25.0 ,),
                Text('41', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          //close card
          Container(
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
          )
        ],
      ),
    );
  }
}
