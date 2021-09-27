import 'package:flutter/material.dart';
//import 'home.dart';
import 'barNavigation.dart';
import 'teste1.dart';
import 'teste2.dart';

class TestesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[400],
        title: Text('Testes de aptidão'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white, // cor da seta
          //onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage(),)),
           onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BarNavigation()));
                    },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white, // cor do fundo
        child: ListView(
          children: <Widget>[
            Image.asset("images/checklist_teste.png", width: 200, height: 200,),
            
            SizedBox(
              height: 20,
            ),
            Text(
              'O teste de aptidão serve para saber se você está apto a doar sangue. É recomendado realizar esse teste no dia que pretende doar. Fique tranquilo, as informações não serão armazenadas, sendo descartadas logo após o resultado.',
              style: TextStyle(
                fontSize: 16,
               // fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Abaixo tem dois testes, o "1º Teste" é mais curto e com informações mais básicas, já o "2º Teste" tem informações mais específicas.\nRecomenda-se fazer os dois testes.',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 55,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.4, 1],
                  colors: [
                    Colors.pinkAccent.shade400,
                    Colors.pink.shade400,
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Text(
                    "1º Teste",
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => PrimeiroTestePage()),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 55,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.4, 1],
                  colors: [
                    Colors.pinkAccent.shade400,
                    Colors.pink.shade400,
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                    child: Text(
                      "2º Teste",
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => SegundoTestePage()),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}