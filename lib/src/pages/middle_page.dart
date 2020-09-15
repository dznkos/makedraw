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
          _paginaDos(context),
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

  Widget _paginaDos(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, 'princ');

            },
            shape: StadiumBorder(),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                child: Text('Bievenido', style: TextStyle(fontSize: 16),),
            )
        ),
      ),
    );

  }
}
