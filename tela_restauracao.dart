import 'package:flutter/material.dart';

class RestauracaoSenha extends StatefulWidget {
  const RestauracaoSenha({key}) : super(key: key);

  @override
  _RestauracaoSenhaState createState() => _RestauracaoSenhaState();
}

class _RestauracaoSenhaState extends State<RestauracaoSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // cor do fundo do app bar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black, // cor da seta
          onPressed: () => Navigator.pop(context, false),
        ),
      ),

      body: Container(
        padding: EdgeInsets.only(
          
          left: 30,
          right: 30,
        ),
        color: Colors.white, // cor do fundo
        child: ListView(
          children: <Widget>[

           Image.asset("images/esqueceu_senha.png",width: 250,height: 350,),
            SizedBox(
              height: 20,
            ),
            Text(
              "Esqueceu sua senha?",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Informe o e-mail associado com a sua conta.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            
            SizedBox(height: 20,),

            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            
            SizedBox(height: 20,),

            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Colors.pink,
                    Colors.red,
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(35),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Text(
                    "Enviar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
