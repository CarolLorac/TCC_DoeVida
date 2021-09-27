import 'package:flutter/material.dart';
import 'testes.dart';

class InaptoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[400],
        title: Text('Inapto'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white, // cor da seta
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TestesPage(),
              )),
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
            
            Image.asset("images/inapto_teste.png", width: 300, height: 300,),
            
            SizedBox(
              height: 20,
            ),
            Text(
              'Infelizmente, de acordo com o teste de aptidão, você não pode realizar a doação, a restrição pode ser permanente ou temporária, cheque se você poderá doar futuramente.',
              style: TextStyle(
                fontSize: 18,
                //fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}