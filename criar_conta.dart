import 'package:app_doevida/barNavigation.dart';
import 'package:flutter/material.dart';

class CriarConta extends StatefulWidget {
  const CriarConta({key}) : super(key: key);

  @override
  _CriarContaState createState() => _CriarContaState();
}

class _CriarContaState extends State<CriarConta> {
  bool _showPassword = false;
  bool _verSenha = false;

  TextEditingController _controllerUsuario= TextEditingController();
  TextEditingController _controllerEmail= TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  TextEditingController _controllerConfirmarSenha = TextEditingController();

  var mensagemErro='';

  _validarCampos(){

    //recupação de dados
    String nome = _controllerUsuario.text;
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;
    String confirmarSenha = _controllerConfirmarSenha.text;

    
    
    if(nome.isNotEmpty){

      if(email.isNotEmpty && email.contains("@")){

        if(senha.isNotEmpty){
         
          if(confirmarSenha.isNotEmpty){
            _cadastrarUsuario();
            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BarNavigation()));
                                  mensagemErro='';
                        

          }
          else{
            setState(() {mensagemErro="Erro!! Digite a confirmação de senha";});
          }

        } else{
          setState(() {mensagemErro="Erro!! Digite a senha";});
        }


      }
      else{
        setState(() {mensagemErro="Erro!! Digite o e-mail e utilize o @";});
      }

    }else{
      setState(() {mensagemErro="Erro!! Digite o nome do usuário";});
    }
    

  }
   _cadastrarUsuario(){

   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Criar conta',
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_sharp),
            color: Colors.black, // cor da seta
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: SingleChildScrollView(
              child: Expanded( child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Image.asset("images/visual_medRemedios.png",
                        width: 700, height: 320),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 9, left: 9),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(blurRadius: 3, color: Colors.black26)
                        ]),
                    child: TextField(
                      controller: _controllerUsuario,
                        decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.person, color: Colors.grey[300]),
                            hintText: 'Usuário',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 9, left: 9),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(blurRadius: 3, color: Colors.black26)
                        ]),
                    child: TextField(
                      controller: _controllerEmail,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.email, color: Colors.grey[300]),
                            hintText: 'E-mail',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,right: 9,left:9), //USAR TOP E BUTTOM PRA DAR ESPAÇO ENTRE OS CONTAINERS
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(blurRadius: 3, color: Colors.black26)
                        ]),

                    child: TextField(
                      controller: _controllerSenha,
                        obscureText: _showPassword == true ? false : true,
                        decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.vpn_key, color: Colors.grey[300]),
                            hintText: 'Senha',
                            suffixIcon: GestureDetector(
                              child: Icon(_showPassword == false
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onTap: () {
                                setState(() {
                                  _showPassword = !_showPassword;
                                });
                              },
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 9, left: 9),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(blurRadius: 3, color: Colors.black26)
                        ]),
                    child: TextFormField(
                      controller: _controllerConfirmarSenha,
                        obscureText: _verSenha == false ? true : false,
                        decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.vpn_key, color: Colors.grey[300]),
                            hintText: 'Confirmar senha',
                            suffixIcon: GestureDetector(
                              child: Icon(_verSenha == false
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onTap: () {
                                setState(() {
                                  _verSenha = !_verSenha;
                                });
                              },
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ))),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30, right: 25, left: 25),
                      height: 50,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                        color: Colors.pinkAccent[400],
                      ),
                      child: TextButton(
                        child: Center(
                          child: Text(
                            'ENTRAR',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        onPressed: /* () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BarNavigation()));
                        }, */ _validarCampos
                      )),
                      Container(height: 10,),
                      Text(mensagemErro, style: TextStyle(color: Colors.red, fontSize: 14))
                ],
              ),)
            )));
  }
}
