import 'package:app_doevida/campExper.dart';
import 'package:flutter/material.dart';

class EscExperiencia extends StatefulWidget {
  const EscExperiencia({key}) : super(key: key);

  @override
  _EscExperienciaState createState() => _EscExperienciaState();
}

class _EscExperienciaState extends State<EscExperiencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black, // cor da seta
          onPressed: () => Navigator.pop(context, false),
        ),

        actions: [
          Padding(padding: EdgeInsets.only(right:15),
          child: TextButton(
           /* style: TextButton.styleFrom(
              textStyle: TextStyle(fontSize: 17, color: Colors.pinkAccent[400]),
            ),*/
            onPressed: () => Navigator.pop(context, false),
            child:  Text('ENVIAR', style: TextStyle(color: Colors.pinkAccent[400], fontSize: 16),),
          ),
          )
        ],
      ),
     body: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.white,
                child: TextField(
                  maxLines: 35,
                    decoration: InputDecoration(
                        hintText: 'Digite sua experiência...',
                        hintStyle: TextStyle(fontSize: 18),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 35,
                          right: 25,
                          top: 30,
                        ))),
              ),
              
     );
  }
}

