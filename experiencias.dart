import 'package:app_doevida/escreverExperiencia.dart';
import 'package:flutter/material.dart';

class Experiencias extends StatefulWidget {
  const Experiencias({ key }) : super(key: key);

  @override
  _ExperienciasState createState() => _ExperienciasState();
}

class _ExperienciasState extends State<Experiencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Colors.pink,
        decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                      0.3,
                      1
                    ],
                    colors: [
                      Colors.pinkAccent[400],
                      Colors.pink[400],
                    ]),
      ),),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 30,),
        backgroundColor: Colors.cyan[200],
        onPressed: (){
          Navigator.push(context, 
          MaterialPageRoute(builder: (context)=> EscExperiencia()));
        },
      ),
    );
  }
}