import 'package:app_doevida/barNavigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:brasil_fields/brasil_fields.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({key}) : super(key: key);

  //final String title;

  @override
  _CadastroState createState() => _CadastroState();
}

class EstadosBR {
  int value;
  String name;
  EstadosBR(this.value, this.name);
}

class TiposSanguineos {
  int valueSangue;
  String nameSangue;
  TiposSanguineos(this.valueSangue, this.nameSangue);
}

class Sexo {
  int valueSexo;
  String nameSexo;
  Sexo(this.valueSexo, this.nameSexo);
}

class _CadastroState extends State<Cadastro> {
  String valueChoose;

  int _valueSexo = 0;
  int _valueSangue = 0;
  int quantDoacoes;
  String cidade;
  String celular;
  String nome;
  String dataNasc;

  List<Sexo> _dropdownSexo = [
    Sexo(0, "Sexo"),
    Sexo(1, "Feminino"),
    Sexo(2, "Masculino")
  ];
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
    EstadosBR(4, "Pará"),
    EstadosBR(5, "Rondônia"),
    EstadosBR(6, "Roraima"),
    EstadosBR(7, "Tocantins"),
    EstadosBR(8, "Alagoas"),
    EstadosBR(9, "Bahia"),
    EstadosBR(10, "Ceará"),
    EstadosBR(11, "Maranhão"),
    EstadosBR(12, "Paraíba"),
    EstadosBR(13, "Pernambuco"),
    EstadosBR(14, "Piauí"),
    EstadosBR(15, "Rio Grande do Norte"),
    EstadosBR(16, "Sergipe"),
    EstadosBR(17, "Goiás"),
    EstadosBR(18, "Mato Grosso"),
    EstadosBR(19, "Mato Grosso do Sul"),
    EstadosBR(20, "Espírito Santo"),
    EstadosBR(21, "Minas Gerais"),
    EstadosBR(22, "Rio de Janeiro"),
    EstadosBR(23, "São Paulo"),
    EstadosBR(24, "Paraná"),
    EstadosBR(25, "Rio Grande do Sul"),
    EstadosBR(26, "Santa Catarina"),
  ];

  final databaseReference = FirebaseDataBase(
          databaseURL: "https://appdoevida-189a7-default-rtdb.firebaseio.com/")
      .reference();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Perfil"),
          backgroundColor: Colors.pinkAccent[400],
        ),
        body: Stack(children: [
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
                      height: 20,
                    ),
                    Image.asset("images/logo.png", width: 400, height: 200),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        onChanged: (text) {
                          nome = text;
                        },
                        decoration: InputDecoration(
                          labelText: "Nome Completo",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        onChanged: (text) {
                          dataNasc = text;
                        },
                        keyboardType: TextInputType.datetime,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          DataInputFormatter(),
                        ],
                        decoration: InputDecoration(
                          focusColor: Colors.pinkAccent[400],
                          labelText: "Data de nascimento",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Center(
                        child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, left: 10, right: 10),
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
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        onChanged: (text) {
                          celular = text;
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          TelefoneInputFormatter(),
                        ],
                        decoration: InputDecoration(
                          labelText: "Celular",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Center(
                        child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, left: 10, right: 10),
                      child: Container(
                        height: 60,
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(20)),
                        child: DropdownButton(
                          hint: Text("Sexo"),
                          dropdownColor: Colors.white,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 36,
                          isExpanded: true,
                          style: TextStyle(color: Colors.black54, fontSize: 17),
                          value: _valueSexo,
                          items: _dropdownSexo.map((Sexo item) {
                            return DropdownMenuItem<int>(
                              child: Text(item.nameSexo),
                              value: item.valueSexo,
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _valueSexo = value;
                            });
                          },
                        ),
                      ),
                    )),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        /* onChanged: ( value){
                          = value;
                        }, */
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          focusColor: Colors.pinkAccent[400],
                          labelText: "Quantidade de doações realizadas",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        /* onChanged: (text){
                         = text;
                        }, */
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          DataInputFormatter(),
                        ],
                        decoration: InputDecoration(
                          focusColor: Colors.pinkAccent[400],
                          labelText: "Data última vez que doou sangue",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Center(
                        child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, left: 10, right: 10),
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
                    )),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        onChanged: (text) {
                          cidade = text;
                        },
                        decoration: InputDecoration(
                          labelText: "Cidade",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Container(
                        margin: (EdgeInsets.only(top: 35, left: 25, right: 25)),
                        height: 50,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: Colors.pinkAccent[400],
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: TextButton(
                          child: Center(
                            child: Text(
                              'ENVIAR',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          onPressed: () {

                            databaseReference.child(_taskTitleController.text).set({
                              'title': _taskTitleController.text,
                              'description': _taskDescriptionController.text,
                              'done': false
                            })

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BarNavigation()));
                          },
                        ))
                  ]))
        ]));
  }
}
