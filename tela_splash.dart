
import 'dart:async';
 
import 'package:app_doevida/inicio/tela_inico.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
 
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}
 
class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
 
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TelaInicio(),//mudar para login
          ));
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [
            Colors.pink,
            Colors.pinkAccent[400], // se colocasse o "pink[400]" dava erro
          ],
        ),
      ),
      child: Center(
        /*child: 
            SizedBox(
              width: 200, // ver se o tamanho vai ficar bom
              height: 200,*/
              child: Image.asset("images/coracao_splash.png", height: 200,width: 100,),
            ),
     // ),
    );
  }
}
