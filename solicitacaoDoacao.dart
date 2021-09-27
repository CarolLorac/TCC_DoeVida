import 'package:app_doevida/carteirinha.dart';
import 'package:app_doevida/sangues.dart';
import 'package:app_doevida/escreverSol.dart';
import 'package:flutter/material.dart';

class SolicitacaoDoacao extends StatefulWidget {
  const SolicitacaoDoacao({  key }) : super(key: key);

  @override
  _SolicitacaoDoacaoState createState() => _SolicitacaoDoacaoState();
}

class _SolicitacaoDoacaoState extends State<SolicitacaoDoacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 8,
        backgroundColor: Colors.white,
        title: Text('Solicitações de doação',
        textAlign: TextAlign.left, 
        style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(icon: Icon(Icons.volunteer_activism, color: Colors.black,size: 30,), onPressed: (){
           Navigator.push(context,
            MaterialPageRoute(builder: (context) => Sangues()));
          })
        ],
      ),
      body: Container(
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
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 30,),
        backgroundColor: Colors.cyan[200],
        onPressed: (){
          Navigator.push(context, 
          MaterialPageRoute(builder: (context)=> Teste()));
        },
      ),
    );
  }
}