import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'inapto.dart';

class SegundoTestePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Responda as afirmações com o que se aplica a você.',
              body: 'Clique em "Não" para começar.',
              image: Image.asset("images/checklist_teste.png", width: 600, height: 280),
            //imagem checklist
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body:
                  '"Tenho asma brônquica grave ou antecedente de choque anafilático."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body:
                  '"Tenho antecedentes de infecções transmissíveis pelo sangue ou infecção pelos agentes hepatite, HBV, HCV, HIV ou HTLV"',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body:
                  '"Tive infecções ou uso de antibióticos, nas últimas 2 semanas."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body:
                  '"Tive sintoma de gripe, resfriado ou temperatura corporal maior ou igual à 38oC nas últimas 2 semanas."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body:
                  '"Tive comportamentos que levem a risco acrescido para infecções sexualmente transmissíveis (DSTs)."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body:
                  '"Tive malária, doença de Chagas, Encefalopatia Espongiforme Humana ou Doença de Creutzfeldt-Jakob (DCJ)."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body:
                  '"Usei anabolizantes injetáveis sem prescrição médica, crack ou cocaína por via nasal (inalação) nos últimos 12 meses."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body: '"Realizaei procedimento endoscópico nos últimos 6 meses."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body:
                  '"Recebi transfusões de sangue, componentes sanguíneos ou hemoderivados nos últimos 12 meses."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              
              image: Image.asset("images/fim_teste.png", width: 200, height: 200,),
              title: 'Você pode realizar a doação!',
              body:
                  'De acordo com esse teste, você pode estar apto à doação. \nExistem impedimementos mais específicos para realizar a doação que podem ser avisados no momento da triagem.',
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Sair',
              style:
                  TextStyle(/* fontWeight: FontWeight.w300, */ color: Colors.white, fontSize: 20)),
          onDone: () => Navigator.pop(context, false),
          showSkipButton: true,
          skip: Text('Sim',
             style:
                  TextStyle(/* fontWeight: FontWeight.w300, */ color: Colors.white, fontSize: 20)),
          
          onSkip: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InaptoPage(),
              )),
          next: Text('Não',
              style:
                  TextStyle(/* fontWeight: FontWeight.w300, */ color: Colors.white, fontSize: 20)),
          dotsDecorator: getDotDecoration(),
          globalBackgroundColor: Colors.pinkAccent[400],
          animationDuration: 500,
        ),
      );

 /* Widget buildImage(String path) => Center(
      child: Image.asset(path,
          width: 350)); */// aqui da pra mudar o tamanho de todas as imagens

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Colors.pink.shade400,
        activeColor: Colors.pink.shade400,
        size: Size(1, 1),
        activeSize: Size(1, 1),
        spacing: EdgeInsets.all(0.2),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 34, 
            //fontWeight: FontWeight.bold
            ), // Tamanho dos títulos
        bodyTextStyle: TextStyle(fontSize: 20), // Tamanho dos subtítulos
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white, // cor da página
      );
}