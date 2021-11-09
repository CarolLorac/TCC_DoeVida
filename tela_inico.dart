import 'package:app_doevida/inicio/criar_conta.dart';
import 'package:app_doevida/barNavigation.dart';
import 'package:app_doevida/inicio/login.dart';
import 'package:flutter/material.dart';


class TelaInicio extends StatefulWidget {
  @override
  _TelaInicioState createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: Colors.white70,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Image.asset("images/visual_doacao.png", width: 390, height: 370),


              
              
              Container(   
                margin: EdgeInsets.only( right: 10, left: 10),    //BOTÃO LOGIN
                height: 57,
                  decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3, 1],
                      colors: [
                        Colors.pink,
                        Colors.red,
                  ],),
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                ),

                child: SizedBox.expand(
                  child: TextButton(
                    child: Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                ),
              ),

              Container(       //BOTÃO CRIAR CONTA
                margin: EdgeInsets.only(top:10, right: 10, left: 10),
                height: 57,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Colors.pink,
                    Colors.red,
                  ],),
                  borderRadius: BorderRadius.all(
                    Radius.circular(32),
                    //BorderSide(color: Colors.white, width: 1.5)
                  ),
                ),

                child: SizedBox.expand(
                  child: TextButton(
                    child: Center(
                      child: Text(
                        'CRIAR CONTA',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CriarConta()));
                    },
                  ),
                ),
              ),

              
              Container( 
              alignment: Alignment(1.0, 0.0),
              padding: EdgeInsets.only(top:5, right:20),
              child: OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
              ),
              onPressed:() {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => BarNavigation())
                );
              },
              child: Text('Seguir sem login', 
              style: TextStyle(color: Colors.pinkAccent[400]),),
              )
              ),
              
              
            ],
          )),
    );
  }
}
