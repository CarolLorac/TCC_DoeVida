import 'package:app_doevida/barNavigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:brasil_fields/brasil_fields.dart';

class Teste extends StatefulWidget {
  const Teste({key}) : super(key: key);

  //final String title;

  @override
  _TesteState createState() => _TesteState();
}
class EstadosBR {
  int value;
  String name;
  EstadosBR(this.value, this.name);
}
class TiposSanguineos{
  int valueSangue;
  String nameSangue;
  TiposSanguineos(this.valueSangue,this.nameSangue);
}

class _TesteState extends State<Teste> {
  String valueChoose;

  int _valueSangue=0;
  List<TiposSanguineos> _dropdownSangues = [
    TiposSanguineos(0, "Tipo Sanguíneo Paciente"),
    TiposSanguineos(1, "A+"),
    TiposSanguineos(2, "A-"),
    TiposSanguineos(3, "B+"),
    TiposSanguineos(4, "B-"),
    TiposSanguineos(5, "AB+"),
    TiposSanguineos(6, "AB-"),
    TiposSanguineos(7, "O+"),
    TiposSanguineos(8, "O-"),
  ];

 int _value = 0;
  List<EstadosBR> _dropdownEstados = [
    EstadosBR(0, "Estado"),
    EstadosBR(1, "Acre"),
    EstadosBR(2, "Amazonas"),
    EstadosBR(3, "Amapá"),
    EstadosBR(4 , "Pará"),
    EstadosBR(5, "Rondônia"),
    EstadosBR(6, "Roraima"),
    EstadosBR(7, "Tocantins"),
    EstadosBR(8, "Alagoas"),
    EstadosBR(9, "Bahia"),
    EstadosBR(10 , "Ceará"),
    EstadosBR( 11, "Maranhão"),
    EstadosBR( 12, "Paraíba"),
    EstadosBR( 13, "Pernambuco"),
    EstadosBR( 14, "Piauí"),
    EstadosBR(15 , "Rio Grande do Norte"),
    EstadosBR( 16, "Sergipe"),
    EstadosBR( 17, "Goiás"),
    EstadosBR( 18, "Mato Grosso"),
    EstadosBR( 19, "Mato Grosso do Sul"),
    EstadosBR( 20, "Espírito Santo"),
    EstadosBR( 21, "Minas Gerais"),
    EstadosBR( 22, "Rio de Janeiro"),
    EstadosBR( 23, "São Paulo"),
    EstadosBR( 24, "Paraná"),
    EstadosBR( 25, "Rio Grande do Sul"),
    EstadosBR( 26, "Santa Catarina"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          /*automaticallyImplyLeading: false,
          centerTitle: true,*/
          title: Text("Cadastro Solicitação"),
          backgroundColor: Colors.pinkAccent[400],
          /*
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.pinkAccent[400], Colors.pink[400]])),
          ),*/
        ),
        /*
       body: ListView(
        padding: EdgeInsets.all(10.0),
        //padding: EdgeInsets.symmetric(horizontal: 32),
        physics: BouncingScrollPhysics(),
        children: [

        ]
       )*/
/*
        body: Container(
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
                ])),
            child:*/
        body: Stack(children: [
          /* Positioned(
                top: 62,
                right: 25,
                left: 25,
                child: Text("Cadastro para solicitação\nde doação",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.shrikhand(
                      textStyle: TextStyle(fontSize: 24, color: Colors.white),
                    )),
              ),*/
          Container(
              width: double.maxFinite,
              height: double.maxFinite,
              //margin: EdgeInsets.only(top: 150),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
              child: ListView(
                  //padding: EdgeInsets.all(15.0),
                  physics: BouncingScrollPhysics(),
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Nome Solicitante",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          TelefoneInputFormatter(),
                        ],
                        decoration: InputDecoration(
                          labelText: "Telefone Solicitante",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        keyboardType: TextInputType.datetime,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          DataInputFormatter(),
                        ],
                        decoration: InputDecoration(
                          focusColor: Colors.pinkAccent[400],
                          labelText:
                              "Até quando a solicitação deve ficar visível?",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.pinkAccent[400],
                          labelText: "Nome completo paciente",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),/*
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Tipo sanguíneo do paciente",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),*/
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
                      child: Container(
                        height: 60,
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(20)),
                        child: DropdownButton(
                          hint: Text("Tipo Sanguíneo"),
                          dropdownColor: Colors.white,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 36,
                          isExpanded: true,
                          style: TextStyle(color: Colors.black54, fontSize: 17),
                          value: _valueSangue,
                          items: _dropdownSangues.map((TiposSanguineos item) {
                            return DropdownMenuItem<int>(
                              child: Text(item.nameSangue),
                              value: item.valueSangue,
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _valueSangue = value;
                            });
                          },
                        ),
                      ),
                    )),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
                      child: Container(
                        height: 60,
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(20)),
                        child: DropdownButton(
                          hint: Text("Estado"),
                          dropdownColor: Colors.white,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 36,
                          isExpanded: true,
                          style: TextStyle(color: Colors.black54, fontSize: 17),
                          value: _value,
                          items: _dropdownEstados.map((EstadosBR item) {
                            return DropdownMenuItem<int>(
                              child: Text(item.name),
                              value: item.value,
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),
                      ),
                    )),/*
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Estado",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),*/
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Cidade",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Hospital que está internado",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          labelText: "Motivo da solicitação",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          labelText: "Informação extra (opcional)",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                   // Row(children: [
                      /*Container(
                          margin:
                              (EdgeInsets.only(top: 35, left: 20, right: 05)),
                          height: 50,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: TextButton(
                            child: Center(
                              child: Text(
                                'SAIR',
                                style: TextStyle(color: Colors.black54),
                              ),
                            ),
                            onPressed: () => Navigator.pop(context, false),
                          )),*/
                      Container(
                          margin:
                              (EdgeInsets.only(top: 35, left: 05, right: 15)),
                          height: 50,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent[400],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: TextButton(
                            child: Center(
                              child: Text(
                                'PUBLICAR',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BarNavigation()));
                            },
                          ))
                    //]
                    //)
                  ]))
        ]));
  }
}
