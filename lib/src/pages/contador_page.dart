import 'package:flutter/material.dart';



class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState();
  

}


//Clase privada solo usar en este archivo
class _ContadorPageState extends State<ContadorPage>{


  final _estiloTexto = new TextStyle(fontSize:25);
  
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks:', style: _estiloTexto),
            Text('$_contador', style: _estiloTexto),
          ],
        )
      ),
      floatingActionButton: _crearBotones()
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }


  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed:_reset ),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove),onPressed: _sustraer),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add),onPressed: _agregar),
      ],
    );
    
  }

  void _agregar(){
    setState(() => _contador++);
  }
  void _sustraer(){
   setState(() => _contador--);
  }
  void _reset(){
   setState(() => _contador=0);
  }
}