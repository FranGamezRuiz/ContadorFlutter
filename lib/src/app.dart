import 'package:flutter/material.dart';


import 'package:flutter_vsc/src/pages/contador_page.dart';
//import 'package:flutter_vsc/src/pages/home_page.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false, //para quitar la barra del DEBUG
      home: Center(
        //child:HomePage(),
        child:ContadorPage(),
      ),

      
    );

  }

}