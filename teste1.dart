import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'inapto.dart';

class PrimeiroTestePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Responda as afirmações com o que se aplica a você.',
              body: 'Clique em "Sim" para começar.',
              image: Image.asset("images/checklist_teste.png", width: 600, height: 280),
               //imagem checklist
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body: '"Estou em boas condições de saúde."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body: '"Tenho entre 16 e 69 anos de idade."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body: '"Peso 50 Kg ou mais."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body:
                  '"Estou descansado e dormi pelo menos 6 horas nas últimas 24 horas."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body:
                  '"Estou alimentado e não ingeri comidas gordurosa nas últimas 4 horas."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body: '"Não ingeri bebidas alcólicas nas últimas 12 horas."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body: '"Não fumei nas últimas 2 horas."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body: '"Não fiz piercing ou tatuagem nos últimos 12 meses."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '\n \n \n',
              body:
                  '"Não estive em período de gestação nas últimas 12 semanas."',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              image: Image.asset("images/fim_teste.png", width: 200,height: 200,),             
               title: 'Você pode realizar a doação!',
              body:
                  'De acordo com esse teste, você pode estar apto à doação. \nRecomenda-se que faça o "2º Teste".',
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Sair',
              style:
                  TextStyle(/* fontWeight: FontWeight.w300, */ color: Colors.white, fontSize: 20)),
           onDone: () => Navigator.pop(context, false),
          showSkipButton: true,
          skip: Text('Não',
              style:
                  TextStyle(/* fontWeight: FontWeight.w300,  */color: Colors.white,fontSize: 20)),
          onSkip: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InaptoPage(),
              )),
          next: Text('Sim',
              style:
                  TextStyle(/* fontWeight: FontWeight.w300, */ color: Colors.white, fontSize: 20)),
          dotsDecorator: getDotDecoration(),
          globalBackgroundColor: Colors.pinkAccent[400],
          animationDuration: 500,
        ),
      );
/*
  Widget buildImage(String path) => Center(
      child: Image.asset(path,
          width: 350)); */// aqui da pra mudar o tamanho de todas as imagens

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Colors.pinkAccent[400],
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
            fontSize: 34,// fontWeight: FontWeight.bold
            ), // Tamanho dos títulos
        bodyTextStyle: TextStyle(fontSize: 20), // Tamanho dos subtítulos
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white, // cor da página
      );
}