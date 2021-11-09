import 'package:app_doevida/banco_dados/login_service.dart';
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
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
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
          child: Form(
            key: _formKey,
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
                   
                    validator: (value){
                      if(!value.contains("@")){
                        return "email deve possuir @";
                      }
                      return null;
                    },
                    controller: _emailController,
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
                   validator: (value){
                      if(value.length <6){
                        return "Senha deve ter pelo menos 6 caracteres.";
                      }
                      return null;
                    },
                   controller: _senhaController,
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
                    onPressed: () {
                     // if (_email == "carol"){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BarNavigation()));
                        _fazerLogin();
                      //}
                      //else{
                       // return;
                      //}
                    },
                  ))
            ],
          )),
      ))
    );
  }
  void _fazerLogin() async{
    if (_formKey.currentState.validate()){
     LoginService().realizarLogin(_emailController.text, _senhaController.text);
    }else{
      print("inválido");
    }
  }
}
