/*import 'dart:async';
 
import 'package:app_doevida/tela_inico.dart';
import 'package:flutter/material.dart';

 
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
            builder: (context) => TelaInicio(),
          ));
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Doe Vida',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.pink),
                strokeWidth: 8.0,
              )
            ]),
      ),
    );
  }
}
 


@override
void initState() {
super.initState();
Timer(Duration(seconds: 3), () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => TelaInicio(),
));
});
}
@override
Widget build(BuildContext context) {
return Container(
decoration: BoxDecoration(color: Colors.pinkAccent[400]),
child: Center(
child: Image.asset("images/white-heart.png"),
),
);
}
}

import 'package:app_doevida/tela_inico.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 4)).then((_){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TelaInicio()));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
            color: Colors.pinkAccent[400],
            child: Center(
              child: Container(
                width: 150,
                height: 150,
                child: Image.asset("images/white-heart.png"),
              ),
            )
        );
  }
}
*/
import 'dart:async';
 
import 'package:app_doevida/tela_inico.dart';
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
