import 'package:flutter/material.dart';

class MiddlePage extends StatelessWidget {

  final _estiloTitulo = TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: 42);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _paginaUno(),
          _paginaDos(),
        ],
      )
    );
  }

  Widget _paginaUno() {
    return Stack(
                children: [
                  _imagenFondo(),
                  Center(
                    child: _textos(),
                  )
                ],
    );
  }

  Widget _imagenFondo(){
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(2.0, 3.0),
          )
        ]
      ),
      child: Image(
          image: AssetImage('assets/scroll.png'),
          fit: BoxFit.cover,
      ),
    );
  }
  Widget _textos(){
    return SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text('11°', style: _estiloTitulo, ),
            Text('Miércoles', style: _estiloTitulo, ),
            //SizedBox(height: 300,),
            Expanded(
                child: SizedBox(height: 1,)
            ),
            IconButton(
                alignment: Alignment.bottomCenter,
                icon: Icon(Icons.keyboard_arrow_down, size: 50, color: Colors.white,),
                onPressed: null)
          ],
        )
    );
  }

  Widget _paginaDos() {
    return Image(image: AssetImage('assets/sunset.jpg')
                ,fit: BoxFit.cover,);

  }
}
