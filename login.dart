import 'package:app_doevida/barNavigation.dart';
import 'package:app_doevida/tela_restauracao.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showPassword=false;   //senha visivel e invisivel
  
  String _emailLogin;
  String _senhaLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Login', style: TextStyle(color: Colors.black, fontSize: 23),),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black, // cor da seta
          onPressed: () => Navigator.pop(context, false),
        ),
      ),

      body: Container(
          
          color: Colors.white,
          child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Container(height: 15),
              Center(
              child: Image.asset("images/visual_time.png",width: 600, height: 300),),
              
              Container(
                margin: EdgeInsets.only(top: 30, right: 5, left: 5),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(blurRadius: 3, color: Colors.black26)
                    ]),
                child: TextFormField(
                    onChanged: (text){
                      _emailLogin = text;
                    },
                    
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email, color: Colors.grey[300]),
                        hintText: 'E-mail',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ))),
              ),

              Container(
                margin: EdgeInsets.only(top: 10, right: 5, left: 5),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(blurRadius: 3, color: Colors.black26)
                    ]),
                child: TextFormField(
                    obscureText: _showPassword == false? true: false,
                    onChanged: (text){
                      _senhaLogin= text;
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key, color: Colors.grey[300]),
                        hintText: 'Senha',

                        suffixIcon: GestureDetector(     //senha visivel e invisivel
                          child: Icon(_showPassword == false? Icons.visibility_off: Icons.visibility),
                          onTap: (){
                            setState((){
                              _showPassword = !_showPassword;
                            }
                            );
                          },
                          ),   
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        )),
                    
                
                ),
              ),

              Container(
              alignment: Alignment(1.0, 0.0),
              padding: EdgeInsets.only( right:20),
              child: TextButton(onPressed: (){
                Navigator.push(context,
                 MaterialPageRoute(builder: (context) => RestauracaoSenha()));
              }, child: Text('Esqueceu a senha? Clique aqui.', style: TextStyle(color: Colors.black45, fontSize: 13))),
              ),

              Container(
                  margin: (EdgeInsets.only(top: 10, left: 25, right: 25 )),
                  height: 50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent[400],
                      borderRadius: BorderRadius.all(Radius.circular(32))),
                  child: TextButton(
                    child: Center(
                      child: Text(
                        'ENTRAR',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    onPressed: () async{
                      bool isValid=await AuthService.signup(_emailLogin,_senhaLogin);
                     // if (_email == "carol"){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BarNavigation()));
                      //}
                      //else{
                       // return;
                      //}
                    },
                  ))
            ],
          )),
      )
    );
  }
}
