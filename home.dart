import 'package:app_doevida/CarroselImagem.dart';
import 'package:app_doevida/cadastro.dart';
import 'package:app_doevida/comoFunciona.dart';
import 'package:app_doevida/criar_conta.dart';
import 'package:app_doevida/escreverExperiencia.dart';
import 'package:app_doevida/googlemaps.dart';
import 'package:app_doevida/regras.dart';
import 'package:app_doevida/notificacoes.dart';
import 'package:app_doevida/testes.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final letra = TextStyle(color: Colors.black, fontSize: 19);
  double tamanhoBotao = 110;

  int currentTab = 2;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Menu();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 10.0,
            title: Text(
              'Doe vida',
              style: TextStyle(color: Colors.black, fontSize: 23),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: IconButton(
                  icon: Icon(
                    Icons.notifications_active,
                    color: Colors.grey,
                    size: 28,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Notificacoes()));
                  },
                ),
              )
            ],
            leading: IconButton(
              icon: Icon(Icons.person, color: Colors.grey, size: 30),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Cadastro()));
              },
            )),

        body: Container(
          child: Stack(children: [
            
            Container(
             height: 242,
             width: double.maxFinite,
             child: Carousel(
              animationDuration: Duration(seconds: 2) ,
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotColor: Colors.white,
              dotIncreasedColor: Colors.white,
              indicatorBgPadding: 5,
              dotBgColor: Colors.transparent,
              dotVerticalPadding: 5,
              dotPosition: DotPosition.topCenter,
              images: [
                Image.asset("images/FraseDoarFazBem.png", fit:  BoxFit.cover,),
                Image.asset("images/FraseTransmitirAmor.png", fit:  BoxFit.cover,),
                Image.asset("images/FraseDoeSangueVida.png", fit:  BoxFit.cover,),

              ],
            ),),

            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              margin: EdgeInsets.only(top: 200),
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
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),

                //border: new Border.all(color: Colors.white) //como colocar cor na borda
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 240,
                      ),
                      Container(
                        margin: EdgeInsets.all(30),
                        width: 130,
                        height: 110,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink[100],
                                blurRadius: 15.0,
                                //spreadRadius: 1.0,
                              )
                            ],
                            color: Colors.white,
                            border: new Border.all(
                                color:
                                    Colors.white), //como colocar cor na borda
                            borderRadius: BorderRadius.circular(
                              30,
                            )),
                        child: Center(
                          child: TextButton(
                            child: Center(
                              child: Text('Como funciona a doação',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 19)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ComoFuncionaPage()));
                            },
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(30),
                        width: 130,
                        height: tamanhoBotao,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink[100],
                                blurRadius: 15.0,
                                //spreadRadius: 1.0,
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: TextButton(
                            child: Center(
                              child: Text('Teste de aptidão',
                                  textAlign: TextAlign.center, style: letra),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TestesPage()));
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        width: 130,
                        height: tamanhoBotao,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink[100],
                                blurRadius: 15.0,
                                //spreadRadius: 1.0,
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: TextButton(
                            child: Center(
                              child: Text('Quantidade de doações',
                                  textAlign: TextAlign.center, style: letra),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CarouselDemo()));
                            },
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        width: 130,
                        height: tamanhoBotao,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink[100],
                                blurRadius: 15.0,
                                //spreadRadius: 1.0,
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: TextButton(
                            child: Center(
                              child: Text('Tempo para próxima doação',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 19)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Regras()));
                            },
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
