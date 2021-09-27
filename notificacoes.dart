import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notificacoes extends StatefulWidget {
  const Notificacoes({ key }) : super(key: key);

  @override
  _NotificacoesState createState() => _NotificacoesState();
}

class _NotificacoesState extends State<Notificacoes> {
  @override
  Widget build(BuildContext context) {     //TEM QUE DECIDIR SE É STATEFUL OU STATELESS
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificações', style: TextStyle(color: Colors.black, fontSize: 23),),
        backgroundColor: Colors.white,

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black, // cor da seta
          onPressed: () => Navigator.pop(context, false),
        ),
          ),
       // ),
      
      body: Container(
       width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3,1],
                colors:[
                  Colors.pinkAccent[400],
                  Colors.pink[400],
                 ]
                ),
            ),
    ));
  }
}