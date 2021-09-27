import 'package:flutter/material.dart';

class Regras extends StatelessWidget {
  const Regras({key}) : super(key: key);
  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(' Regras e Informações', style: TextStyle(color: Colors.black)),
          elevation: 8,
          backgroundColor: Colors.white,
        ),
        body: Container(
        decoration: BoxDecoration(
          color: Colors.purple[100],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [
              Colors.pinkAccent[400],
              Colors.pink[400]
            ],
          ),
        ),
        child: ListView(physics: BouncingScrollPhysics(), children: [
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text('Requisitos básicos',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      )),
                  padding: EdgeInsets.all(3.0),
                  margin: EdgeInsets.all(3.0),
                ),
                Container(
                    //margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider(
                  color: Colors.black45,
                  height: 20,
                )),
                //const SizedBox(height: 3),
                Container(
                  child: Text(
                      ' » Estar em boas condições de saúde. \n » Ter entre 16 e 69 anos, desde que a primeira doação tenha sido feita até 60 anos. \n » Pesar no mínimo 50kg.\n » Estar descansado (ter dormido pelo menos 6 horas nas últimas 24 horas). \n » Apresentar documento original com foto. \n » Estar alimentado (evitar alimentação gordurosa nas 4 horas que antecedem a doação).',
                      style: TextStyle(
                        fontSize: 17,
                        //fontWeight: FontWeight.bold,
                      )),
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.all(2.0),
                ),
                //const SizedBox(height: 15),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text('Principais impedimentos temporários',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      )),
                  padding: EdgeInsets.all(3.0),
                  margin: EdgeInsets.all(3.0),
                ),
                Container(
                    //margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider(
                  color: Colors.black45,
                  height: 20,
                )),
                //const SizedBox(height: 3),
                Container(
                  child: Text(
                      ' » Gripe, resfriado e febre: aguardar 7 dias após o desaparecimento dos sintomas. \n » Período gestacional. \n » Período pós-gravidez: 90 dias para parto normal e 180 dias para cesariana.\n » Amamentação: até 12 meses após o parto. \n » Ingestão de bebida alcoólica nas 12 horas que antecedem a doação.\n » Tatuagem e/ou piercing nos últimos 12 meses (piercing em cavidade oral ou região genital impedem a doação).\n » Extração dentária: 72 horas. \n » Apendicite, hérnia, amigdalectomia, varizes: 3 meses.\n » Colecistectomia, histerectomia, nefrectomia, redução de fraturas, politraumatismos sem sequelas graves, tireoidectomia, colectomia: 6 meses.\n » Transfusão de sangue: 1 ano.\n » Vacinação: o tempo de impedimento varia de acordo com o tipo de vacina.\n » Procedimentos com utilização de endoscópio: 6 meses.\n » Ter sido exposto a situações de risco acrescido para infecções sexualmente transmissíveis (aguardar 12 meses após a exposição).',
                      style: TextStyle(
                        fontSize: 17,
                        //fontWeight: FontWeight.bold,
                      )),
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.all(2.0),
                ),
                //const SizedBox(height: 15),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text('Principais impedimentos definitivos',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      )),
                  padding: EdgeInsets.all(3.0),
                  margin: EdgeInsets.all(3.0),
                ),
                Container(
                    //margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider(
                  color: Colors.black45,
                  height: 20,
                )),
                //const SizedBox(height: 3),
                Container(
                  child: Text(
                      ' » Ter passado por um quadro de hepatite após os 11 anos de idade.\n » Evidência clínica ou laboratorial das seguintes doenças transmissíveis pelo sangue:  Hepatites B e C, AIDS (vírus HIV), doenças associadas aos vírus HTLV I e II e Doença de Chagas.\n » Uso de drogas ilícitas injetáveis.\n » Malária.',
                      style: TextStyle(
                        fontSize: 17,
                        //fontWeight: FontWeight.bold,
                      )),
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.all(2.0),
                ),
                //const SizedBox(height: 15),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text('Cuidados pós-doação de sangue',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      )),
                  padding: EdgeInsets.all(3.0),
                  margin: EdgeInsets.all(3.0),
                ),
                Container(
                    //margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider(
                  color: Colors.black45,
                  height: 20,
                )),
                //const SizedBox(height: 3),
                Container(
                  child: Text(
                      ' » Evite esforços físicos exagerados por 12 horas.\n » Aumente a ingestão de líquidos (água).\n » Não fume por 2 horas.\n » Evite bebidas alcoólicas por 12 horas.\n » Mantenha o curativo no local da punção por 4 horas.\n » Não dirija veículos de grande porte, não trabalhe em andaimes e não pratique paraquedismo ou mergulho.\n » Faça um pequeno lanche e hidrate-se.',
                      style: TextStyle(
                        fontSize: 17,
                        //fontWeight: FontWeight.bold,
                      )),
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.all(2.0),
                ),
                //const SizedBox(height: 15),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text('Sobre o sangue doado',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      )),
                  padding: EdgeInsets.all(3.0),
                  margin: EdgeInsets.all(3.0),
                ),
                Container(
                    //margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider(
                  color: Colors.black45,
                  height: 20,
                )),
                //const SizedBox(height: 3),
                Container(
                  child: Text(
                      '» Qual a quantidade de sangue doado?\nUma pessoa adulta tem, em média, 5 litros de sangue. Em cada doação, o máximo de sangue retirado é de 450 ml.\n\n» Quantas vezes por ano posso doar sangue?\nMulheres podem doar até três vezes em um período de 12 meses, com intervalo mínimo de 90 dias entre as doações.\nHomens podem doar até quatro vezes em um período de 12 meses, com intervalo mínimo de 60 dias entre as doações.\n\n» Quanto tempo leva para o organismo repor o sangue doado?\nO organismo repõe o volume de sangue doado nas primeiras 24 horas após a doação.\n\n» O que é feito com o sangue doado?\nApós a coleta, a bolsa de sangue é separada em componentes sanguíneos (concentrado de hemácias, de plaquetas e plasma).Esses componentes são liberados para uso somente após o resultado dos exames. As unidades que apresentam reatividade sorológica são descartadas. Uma única bolsa doada pode beneficiar até quatro vidas.\n\n» Qual a validade do sangue doado?\nCada hemocomponente possui uma validade:\nConcentrado de hemácias (CHM) – 35 a 42 dias \nConcentrado de plaquetas (CP) – cinco dias\nPlasma fresco congelado (PFC) – um ano\nCrioprecipitado (CRIO) – um ano\n\n» Quais exames são feitos no sangue doado?\nImuno-hematológicos: tipagem ABO e Rh, pesquisa de anticorpos irregulares e pesquisa de hemoglobina S.\nSorológicos: são feitos exames para pesquisa de hepatites B e C, Doença de Chagas, sífilis, HIV e HTLV.\nQuando um paciente necessita do sangue são realizados testes de compatibilidade entre o sangue doado e o do potencial receptor - a chamada prova cruzada.',
                      style: TextStyle(
                        fontSize: 17,
                        //fontWeight: FontWeight.bold,
                      )),
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.all(2.0),
                ),
                //const SizedBox(height: 15),
              ],
            ),
          ),
        ])));
  }
}
