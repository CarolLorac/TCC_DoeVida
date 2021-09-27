import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class ComoFuncionaPage extends StatelessWidget {
  @override
 // Widget build(BuildContext context) => SafeArea(
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Como funciona a doação",style: TextStyle(fontSize: 19),),
          backgroundColor: Colors.pinkAccent[400],
        ),
        body: Container(
       
       child: Container(
         padding: EdgeInsets.only(top: 40),
         color: Colors.white,
        child: Center(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Como funciona a doação?',
              body: 'Arraste para o lado e descubra quais são os passos para doar.',
              image: Image.asset("images/0_comoFun_int.png",width: 600, height: 400),//imagem ponto de interrogação
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Descubra se está apto',
              body:
                  'Leia as regras e requisitos necessários antes de sair de casa.\nÉ possível encontrá-los na aba "Regras" e no botão "Teste de aptidão" no Home.',
              image: Image.asset("images/1_comoFun_lerRegras.png",width: 600, height: 400), // imagem com livros
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Encontre o hemocentro mais próximo',
              body: 'É possível encontrá-lo na aba "Mapa".',
              image: Image.asset("images/2_comoFun_local.png",width: 600, height: 400),//imagem com mapa
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Se diriga à recepção',
              body:
                  'É necessário apresentar algum documento original com foto.\nPara menores de idade é necessário estar acompanhado do responsável legal.',
              image: Image.asset("images/3_comoFun_recep.png",width: 600, height: 400),//imagem recepção
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Preencha a ficha de cadastro',
              body:
                  'No cadastro, você irá informar dados como nome, documento, endereço, formas de contato, etc.',
              image: Image.asset("images/4_comoFun_docs.png",width: 600, height: 400),//imagem ficha
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Sala de espera',
              body: 'Aguarde ser chamado.',
              image: Image.asset("images/5_comoFun_esper.png",width: 600, height: 400),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Pré-triagem',
              body:'Nesse momento irão medir sua pressão, fazer teste de anemia, medir temperatura e pesar para observar se está tudo bem com sua saúde.',
              image: Image.asset("images/8_comoFun_anemia.png",width: 600, height: 400), //imagem entrevista
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              
              title: 'Triagem',
              body:
                  'Na triagem a(o) enfermeira(o) realiza diversas perguntas para saber se você está apto a doar.',
              image: Image.asset("images/6_comoFun_entrev.png",width: 600, height: 400),//imagem atividades...
              decoration: getPageDecoration(),
            ),
            
            PageViewModel(
              title: 'Coleta de sangue',
              body:
                  'Se passar pela triagem e pré-triagem e estiver tudo bem, você será encaminhado(a) para a sala de coleta para realizá-la.\n O procedimento leva de 8 a 12 minutos.',
              image: Image.asset("images/10_comoFun_doacao.png",width: 600, height: 400),//imagem sala de doação
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Lanchinho',
              body:
                  'Após a doação é recomendado se alimentar, por isso o hemocentro oferece um lanche.',
              image: Image.asset("images/11_comoFun_lanche.png",width: 600, height: 400),//imagem comidas
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Fim',
              body:
              'Se caso der algum problema no seu exame, o hemocentro entrará em contato.\nÉ isso!! Tranquilo né? Agora que já sabe como funciona o processo, agende sua doação :) ',
                 // 'O processo de doação se encerra, depois de algumas semanas você pode conferir os exames realizados no sangue e se o mesmo foi utilizado.',
              image: Image.asset("images/12_comoFun_fim.png",width: 600, height: 400), //imagem medicos
              decoration: getPageDecoration(),
            ),
          ],
          showDoneButton: false,
          showNextButton: false,
          showSkipButton: false,

          dotsDecorator: getDotDecoration(),
          //onChange: (index) => print('Pagina $index selecionada.'),
          globalBackgroundColor: Colors.white,

          animationDuration: 500,
        ),
      ))));
}}

  Widget buildImage(String path) => Center(
      child: Image.asset(path,
          width: 350)); // aqui da pra mudar o tamanho de todas as imagens

  DotsDecorator getDotDecoration() => DotsDecorator(
        // decoração dos pontinhos
        spacing: EdgeInsets.only(bottom: 100, right: 2,left:1),
        color: Colors.grey[350],
        activeColor: Colors.pinkAccent[400],
        size: Size(8, 10),
       activeSize: Size(10, 15),
       /* activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),*/
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold), // Tamanho dos títulos
        bodyTextStyle: TextStyle(fontSize: 18), // Tamanho dos subtítulos
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.only(top:24, left:24, right: 24,),
        pageColor: Colors.white, // cor da página
      );
