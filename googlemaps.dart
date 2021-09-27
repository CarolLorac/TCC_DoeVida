
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  const Maps({key}) : super(key: key);

  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  
  Completer<GoogleMapController> _controller = Completer();


  @override

  void initState(){
    super.initState();
  }

  double zoomVal = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Locais para doar", ),backgroundColor: Colors.pinkAccent[400], 
        leading: Icon(Icons.map),),
        body: Stack(children: <Widget>[
          _googlemap(context)
        ],)
      );
  }
}
Widget _googlemap(BuildContext context){
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child: GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: CameraPosition(target: LatLng(-9.2900806,-52.7185489), zoom: 4),
      onMapCreated: (GoogleMapController controller){
         //_controlle.complete(controller);      
       }, 
       markers: {
         
         //AC
         hemoAcreMarker,

         //AP
         hemoAPMarker,

         //AM
         fhemoamMarker,

         //PA
         fundHemopaMarker,

         //RO
         fhemeronMarker,
  
         //RR
         //hemoRoraimaMarker,

         //TO
          unidadeTOMArker,
          palmasTOMarker,
          araguainaTOMarker,
          gurupiTOMarker,

         //AL
          maceioALMarker,
          arapiracaALMarker,

         //BA
        hemobaMarker,
        itaberabaBAMarker,
        stsBAMarker,
        seabraBAMarker,
        pauloAfonsoBAMarker,
        eunapolisBAMarker,
        ihebaMarker,
         //SE
        aracajuSEMarker,
        ihhsSEMarker,
         //PE
        recifePEMarker,
        caruaruPEMarker,
        garanhunsPEMarker,
        ouricuriPEMarker,
        petrolinaPEMarker,
        salgueiroPEMarker,
        hematoPEMarker,
        ihenePEMarker,

         //PB
        cajazeirasPBMarker,
        campinaGrandePBMarker,
        joaoPessoaPBMarker,
         //RN
        natalRNMarker,
        mossoroRNMarker,
        caicoRNMarker,
        curraisNovosRNMarker,
         //CE
        fortalezaCEMarker,
        iguatuCEMarker,
        juazeiroCEMarker,
        cratoCEMarker,
        quixadaCEMarker, 
        cearaMarker,

         //MA
        pinheirosMAMarker,
        saoLuisMAMarker,
        imperatrizMAMarker,
        pedreirasMAMarker,
        haimaMAMarker,
        balsasMAMarker,

         //PI
        teresinaPIMarker,
        picosPIMarker,
        florianoPIMarker,
        parnaibaPIMarker,
         //MT
        cuiabaMTMarker,
         //MS
        douradosMSMarker,
        campoGrandeMSMarker,
        tresLagoasMSMarker,
        aquidauanaMSMarker,
        pontaPoraMSMarker,
        coximMSMarker,
        hospitalMSMarker,

         //GO
        goianiaGOMarker,
        catalaoGOMarker,
        ceresGOMarker,
        rioVerdeGOMarker,
        formosaGOMarker,
        porangatuGOMarker,
        quirinopolisGOMarker,
         //MG
        pousoAlegreMGMarker,
        bhMGMarker,
        beloHorizonteMGMarker,
        uberabaMGMarker,  
        uberlandiaMGMarker,
        passosMGMarker,
        manhuacuMGMarker,
        patosMinasMGMarker,
        lagoaSantaMGMarker,
        montesClarosMGMarker,
        ituiutabaMGMarker,
        valadresMGMarker,
        vldMGMarker,
        pocosCaldasMGMarker,
        divinopolisMGMarker,
        curveloMGMarker,
        seteLagoasMGMarker,

         //ES
        vitoriaESMarker,
        saoMateusESMarker,
        colatinaESMarker,
        esvitoriaESMarker,
        linharesESMarker,
         //RJ
        rioJaneiroRJMarker,
        rioRJMarker,
        laranjeirasRJMarker,
        militarRJMarker,
        hupeRJMarker,
        associadosRJMarker,
        incaRJMarker,
         //SP
         unicampMarker,
         santaCasaMarker,
         ribeiraoPretoMarker,
         bauruMarker,
         hospCancerMarker,
         santosMarker,
         amaralCarvalhoMarker,

         //PR
        
         londrinaPRMarker,
         curitibaPRMarker,
         cascavelPRMarker

         //SC
        
         //RS
        
        
        
       },
    )
  );
}
//SÂO PAULO
Marker unicampMarker=Marker(
  markerId: MarkerId("1"),
  position: LatLng(-22.8287026,-47.064613),
  infoWindow: InfoWindow(title: "Hemocentro Unicamp", snippet: "Campinas/SP"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan)
  );

Marker santaCasaMarker=Marker(
  markerId: MarkerId("2"),
  position: LatLng(-23.543817,-46.649978),
  infoWindow: InfoWindow(title: "Hemocentro da Santa Casa", snippet: "São Paulo/SP"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker ribeiraoPretoMarker=Marker(
  markerId: MarkerId("3"),
  position: LatLng(-21.1617734,-47.8511618),
  infoWindow: InfoWindow(title: "Hemocentro de Ribeirão Preto", snippet: "Ribeirão Preto/SP"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker bauruMarker=Marker(
  markerId: MarkerId("4"),
  
  position: LatLng(-22.329762,-49.0763598),
  infoWindow: InfoWindow(title: "Hemonúcleo de Bauru", snippet: "Bauru/SP"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker hospCancerMarker=Marker(
  markerId: MarkerId("5"),
  position: LatLng(-20.5818193,-48.5710179),
  infoWindow: InfoWindow(title: "Hospital de Câncer de Barretos", snippet: "Barretos/SP"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker santosMarker=Marker(
  markerId: MarkerId("6"),
  position: LatLng(-23.9631917,-46.3234158),
  infoWindow: InfoWindow(title: "Hemonúcleo de Santos", snippet: "Santos/SP"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker amaralCarvalhoMarker=Marker(
  markerId: MarkerId("7"),
  position: LatLng(-22.2914961,-48.5522079),
  infoWindow: InfoWindow(title: "Hospital Amaral Carvalho", snippet: "Jau/SP"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//ACRE
Marker hemoAcreMarker=Marker(
  markerId: MarkerId("15"),
  position: LatLng(-9.9539794,-67.8215551 ),
  infoWindow: InfoWindow(title: "Hemoacre", snippet: "Rio Branco-AC"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//AMAPA
Marker hemoAPMarker=Marker(
  markerId: MarkerId("16"),
  position: LatLng(0.0426558,-51.0620448),
  infoWindow: InfoWindow(title: "Hemoap", snippet: "Macapá-AP"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//AMAZONAS
Marker fhemoamMarker=Marker(
  markerId: MarkerId("17"),
  position: LatLng(-3.0909317,-60.0371678),
  infoWindow: InfoWindow(title: "Hemoam", snippet: "Manaus/AM"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//PARA
Marker fundHemopaMarker=Marker(
  markerId: MarkerId("18"),
  position: LatLng(-1.4627688,-48.489452),
  infoWindow: InfoWindow(title: "Fundação HEMOPA", snippet: "Belém-PA"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );


//RONDÔNIA
Marker fhemeronMarker=Marker(
  markerId: MarkerId("19"),
  position: LatLng(-12.7373499,-60.1336401),
  infoWindow: InfoWindow(title: "Fhemeron", snippet: "Vilhena-RO"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//RORAIMA
/*Marker hemoRoraimaMarker=Marker(
  markerId: MarkerId("20"),
  position: LatLng(-16.0190845,-66.5237104),
  infoWindow: InfoWindow(title: "Hemocentro de Roraima", snippet: "Boa Vista-RR"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );*/

//TOCANTINS
Marker unidadeTOMArker=Marker(
  markerId: MarkerId("21"),
  position: LatLng(-5.4655082,-47.8836358),
  infoWindow: InfoWindow(title: "Unidade de Coleta e Transfusão de Augustinópolis", snippet: "Augustinópolis-TO"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker palmasTOMarker=Marker(
  markerId: MarkerId("22"),
  position: LatLng(-10.1660898,-48.3341822),
  infoWindow: InfoWindow(title: "Hemocentro Coordenador de Palmas", snippet: "Palmas-TO"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker araguainaTOMarker=Marker(
  markerId: MarkerId("23"),
  position: LatLng(-7.1935898,-48.21092061),
  infoWindow: InfoWindow(title: "Hemocentro Regional De Araguaína", snippet: "Araguaína-TO"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker gurupiTOMarker=Marker(
  markerId: MarkerId("24"),
  position: LatLng(-11.7294067,-49.0622353),
  infoWindow: InfoWindow(title: "Núcleo De Hemoterapia De Gurupi", snippet: "Gurupi-TO"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//ALAGOAS
Marker maceioALMarker=Marker(
  markerId: MarkerId("25"),
  position: LatLng(-9.6727139,-35.760747),
  infoWindow: InfoWindow(title: "Hemoal Trapiche", snippet: "Maceió-AL"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker arapiracaALMarker=Marker(
  markerId: MarkerId("26"),
  position: LatLng(-9.7530519,-36.6666308),
  infoWindow: InfoWindow(title: "Hemoal Arapiraca", snippet: "Arapiraca-AL"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

  //BAHIA
Marker hemobaMarker=Marker(
  markerId: MarkerId("27"),
  position: LatLng(-16.2831873,-44.7289799),
  infoWindow: InfoWindow(title: "HEMOBA", snippet: "Várias cidades da Bahia"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker itaberabaBAMarker=Marker(
  markerId: MarkerId("28"),
  position: LatLng(-12.5268153,-40.3144589),
  infoWindow: InfoWindow(title: "UCT Hemoba", snippet: "Itaberaba-BA"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker stsBAMarker=Marker(
  markerId: MarkerId("29"),
  position: LatLng(-12.9722225,-38.5028962),
  infoWindow: InfoWindow(title: "STS - Banco de Sangue, Laboratório e Hematologia Clínica", snippet: "Salvador-BA"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker seabraBAMarker=Marker(
  markerId: MarkerId("30"),
  position: LatLng(-12.4140523,-41.7720312),
  infoWindow: InfoWindow(title: "HEMOBA Seabra", snippet: "Seabra-BA"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker pauloAfonsoBAMarker=Marker(
  markerId: MarkerId("31"),
  position: LatLng(-9.3942871,-38.2186269),
  infoWindow: InfoWindow(title: "HEMOBA Paulo Afonso", snippet: "Paulo Afonso-BA"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker eunapolisBAMarker=Marker(
  markerId: MarkerId("32"),
  position: LatLng(-16.3730154,-39.5753533),
  infoWindow: InfoWindow(title: "Hemocentro Regional", snippet: "Eunápolis-BA"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker ihebaMarker=Marker(

  markerId: MarkerId("33"),
  position: LatLng(-13.0039096,-38.5463534),
  infoWindow: InfoWindow(title: "IHEBA - Instituto de Hematologia da Bahia", snippet: "Barra, Salvador-BA"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );
/*
Marker arapiracaALMarker=Marker(
  markerId: MarkerId("34"),
  position: LatLng(-9.7530519,-36.6666308),
  infoWindow: InfoWindow(title: "Hemoal Arapiraca", snippet: "Arapiraca-AL"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );*/

//SERGIPE

Marker aracajuSEMarker=Marker(
  markerId: MarkerId("34"),
  position: LatLng(-10.9137051,-37.0938241),
  infoWindow: InfoWindow(title: "HEMOSE - Centro de Hemoterapia de Sergipe", snippet: "Aracaju-SE"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker ihhsSEMarker=Marker(
  markerId: MarkerId("35"),
  position: LatLng(-10.9258263,-37.0537326),
  infoWindow: InfoWindow(title: "IHHS - Instituto de Hematologia e Hemoterapia de Sergipe", snippet: "Aracaju-SE"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//PERNAMBUCO
Marker recifePEMarker=Marker(
  markerId: MarkerId("36"),
  position: LatLng(-8.0528651,-34.9001603),
  infoWindow: InfoWindow(title: "Hemope - Fundação de Hematologia e Hemoterapia de Pernambuco", snippet: "Recife-PE"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker caruaruPEMarker=Marker(
  markerId: MarkerId("37"),
  position: LatLng(-8.2800397,-35.9730087),
  infoWindow: InfoWindow(title: "Hemocentro Regional Caruaru", snippet: "Caruaru-PE"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker garanhunsPEMarker=Marker(
  markerId: MarkerId("38"),
  position: LatLng(-8.8824841,-36.4852762),
  infoWindow: InfoWindow(title: "Hemocentro Regional Garanhuns", snippet: "Garanhuns-PE"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker ouricuriPEMarker=Marker(
  markerId: MarkerId("39"),
  position: LatLng(-7.8816503,-40.087004),
  infoWindow: InfoWindow(title: "Hemocentro Regional Ouricuri", snippet: "Ouricuri-PE"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker petrolinaPEMarker=Marker(
  markerId: MarkerId("40"),
  position: LatLng(-9.3940982,-40.5025804),
  infoWindow: InfoWindow(title: "Hemocentro Regional Petrolina", snippet: "Petrolina-PE"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker salgueiroPEMarker=Marker(
  markerId: MarkerId("41"),
  position: LatLng(-8.0749529,-39.1233228),
  infoWindow: InfoWindow(title: "Núcleo de Hemoterapia Regional Salgueiro", snippet: "Salgueiro-PE"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker hematoPEMarker=Marker(
  markerId: MarkerId("42"),
  position: LatLng(-8.0598623,-34.8942077),
  infoWindow: InfoWindow(title: "Banco de Sangue Hemato", snippet: "Recife-PE"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker ihenePEMarker=Marker(
  markerId: MarkerId("43"),
  position: LatLng(-8.0503551,-34.8950434),
  infoWindow: InfoWindow(title: "IHENE-Instituto de Hematologia do Nordeste", snippet: "Recife-PE"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//PARAIBA

Marker cajazeirasPBMarker=Marker(
  markerId: MarkerId("44"),
  position: LatLng(-6.884406,-38.5570255),
  infoWindow: InfoWindow(title: "Hemonúcleo de Cajazeiras", snippet: "Cajazeiras-PB"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker campinaGrandePBMarker=Marker(
  markerId: MarkerId("45"),
  position: LatLng(-7.2397156,-35.8748503),
  infoWindow: InfoWindow(title: "Hemocentro de Campina Grande", snippet: "Campina Gtande-PB"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker joaoPessoaPBMarker=Marker(
  markerId: MarkerId("46"),
  position: LatLng(-7.1273099,-34.8732918),
  infoWindow: InfoWindow(title: "Hemocentro da Paraíba", snippet: "João Pessoa-PB"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//RIO GRANDE DO NORTE
Marker natalRNMarker=Marker(
  markerId: MarkerId("47"),
  position: LatLng(-5.8104912,-35.1987654),
  infoWindow: InfoWindow(title: "Hemonorte: Dalton Cunha", snippet: "Natal-RN"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker mossoroRNMarker=Marker(
  markerId: MarkerId("48"),
  position: LatLng(-5.1903363,-37.3672419),
  infoWindow: InfoWindow(title:"Hemocentro de Mossoró", snippet: "Mossoró-RN"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker caicoRNMarker=Marker(
  markerId: MarkerId("49"),
  position: LatLng(-6.4594993,-37.0978999),
  infoWindow: InfoWindow(title:"Hemocentro Sec Saúde", snippet: "Caicó-RN"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker curraisNovosRNMarker=Marker(
  markerId: MarkerId("50"),
  position: LatLng(-6.2581288,-36.5256085),
  infoWindow: InfoWindow(title:"Hemocentro de Currais Novos", snippet: "Currais Novos-RN"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//CEARA

Marker fortalezaCEMarker=Marker(
  markerId: MarkerId("51"),
  position: LatLng(-3.7391092,-39.6193908),
  infoWindow: InfoWindow(title:"Hemoce Fortaleza", snippet: "Fortaleza-CE"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker iguatuCEMarker=Marker(
  markerId: MarkerId("52"),
  position: LatLng(-6.3727579,-39.3090421),
  infoWindow: InfoWindow(title:"Hemoce Iguatu", snippet: "Iguatu-CE"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker juazeiroCEMarker=Marker(
  markerId: MarkerId("53"),
  position: LatLng(-7.2257249,-39.3283041),
  infoWindow: InfoWindow(title:"Hemonúcleo", snippet: "Juazeiro do Norte-CE"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker cratoCEMarker=Marker(
  markerId: MarkerId("54"),
  position: LatLng(-7.2375529,-39.4177586),
  infoWindow: InfoWindow(title:"Hemocentro Regional de Crato", snippet: "Crato-CE"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker quixadaCEMarker=Marker(
  markerId: MarkerId("55"),
  position: LatLng(-4.9667353,-39.0269928),
  infoWindow: InfoWindow(title:"Hemocentro Regional De Quixadá", snippet: "Quixadá-CE"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker cearaMarker=Marker(
  markerId: MarkerId("56"),
  position: LatLng(-3.7490569,-38.5520077),
  infoWindow: InfoWindow(title:"Centro de Hematologia e Hemoterapia do Ceará", snippet: "Fortaleza-CE"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//MARANHAO
Marker pinheirosMAMarker=Marker(
  markerId: MarkerId("57"),
  position: LatLng(-2.5177958,-45.1031258),
  infoWindow: InfoWindow(title:"Hemomar - Pinheiro", snippet: "Pinheiro-MA"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker saoLuisMAMarker=Marker(
  markerId: MarkerId("58"),
  position: LatLng(-2.5461265,-44.2849619),
  infoWindow: InfoWindow(title:"HEMOMAR ", snippet: "São Luís-MA"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker imperatrizMAMarker=Marker(
  markerId: MarkerId("59"),
  position: LatLng(-5.526582,-47.4894621),
  infoWindow: InfoWindow(title:"Hemomar Imperatriz", snippet: "Imperatriz-MA"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker pedreirasMAMarker=Marker(
  markerId: MarkerId("60"),
  position: LatLng(-4.5766726,-44.6022281),
  infoWindow: InfoWindow(title:"Hemomar - Hemonúcleo de Pedreiras", snippet: "Pedreiras-MA"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker haimaMAMarker=Marker(
  markerId: MarkerId("61"),
  position: LatLng(-2.534339,-44.296697),
  infoWindow: InfoWindow(title:"Haima", snippet: "São Luís-MA"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker balsasMAMarker=Marker(
  markerId: MarkerId("62"),
  position: LatLng(-7.5319192,-46.0422179),
  infoWindow: InfoWindow(title:"HEMOMAR - Agencia De Balsas", snippet: "Balsas-MA"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//PIAUI

Marker teresinaPIMarker=Marker(
  markerId: MarkerId("63"),
  position: LatLng(-5.0894625,-42.806131),
  infoWindow: InfoWindow(title:"Hemopi", snippet: "Teresina-PI"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker picosPIMarker=Marker(
  markerId: MarkerId("64"),
  position: LatLng(-7.0740493,-41.4687713),
  infoWindow: InfoWindow(title:"Hemocentro De Picos", snippet: "Picos-PI"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker florianoPIMarker=Marker(
  markerId: MarkerId("65"),
  position: LatLng(-6.7706253,-43.0309932),
  infoWindow: InfoWindow(title:"Hemocentro Floriano", snippet: "Floriano-PI"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker parnaibaPIMarker=Marker(
  markerId: MarkerId("66"),
  position: LatLng(-2.9071089,-41.7827893),
  infoWindow: InfoWindow(title:"Hemocentro Regional de Parnaíba", snippet: "Parnaíba-PI"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//MATO GROSSO
Marker cuiabaMTMarker=Marker(
  markerId: MarkerId("67"),
  position: LatLng(-15.6057237,-56.1032447),
  infoWindow: InfoWindow(title:"MT-Hemocentro", snippet: "Cuiabá-MT"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//MATO GROSSO DO SUL

Marker douradosMSMarker=Marker(
  markerId: MarkerId("68"),
  position: LatLng(-22.2273033,-54.7853556),
  infoWindow: InfoWindow(title:"Hemocentro Dourados", snippet: "Dourados-MS"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker campoGrandeMSMarker=Marker(
  markerId: MarkerId("69"),
  position: LatLng(-20.4686535,-54.6113051),
  infoWindow: InfoWindow(title:"Hemosul", snippet: "Campo Grande-MS"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker tresLagoasMSMarker=Marker(
  markerId: MarkerId("70"),
  position: LatLng(-20.7931101,-51.6974439),
  infoWindow: InfoWindow(title:"Hemonúcleo de Três Lagoas", snippet: "Três Lagoas-MS"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker aquidauanaMSMarker=Marker(
  markerId: MarkerId("71"),
  position: LatLng(-20.4715268,-55.7864902),
  infoWindow: InfoWindow(title:"HEMOSUL - Aquidauana", snippet: "Aquidauana-MS"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker pontaPoraMSMarker=Marker(
  markerId: MarkerId("72"),
  position: LatLng(-22.5309275,-55.717031),
  infoWindow: InfoWindow(title:"HEMOSUL - Ponta Porã", snippet: "Ponta Porã-MS"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker coximMSMarker=Marker(
  markerId: MarkerId("73"),
  position: LatLng(-18.5079698,-54.7531398),
  infoWindow: InfoWindow(title:"HEMOSUL - Coxim", snippet: "Coxim-MS"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker hospitalMSMarker=Marker(
  markerId: MarkerId("74"),
  position: LatLng(-20.5135448,-54.6565746),
  infoWindow: InfoWindow(title:"Hospital Regional de Mato Grosso do Sul", snippet: "Campo Grande-MS"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//GOIAS
Marker goianiaGOMarker=Marker(
  markerId: MarkerId("75"),
  position: LatLng(-16.6758026,-49.2814171),
  infoWindow: InfoWindow(title:"Hemocentro Dr. Nion Albernaz", snippet: "Goiânia-GO"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker catalaoGOMarker=Marker(
  markerId: MarkerId("76"),
  position: LatLng(-18.1630392,-47.9434217),
  infoWindow: InfoWindow(title:"Hemocentro Regional de Catalão", snippet: "Catalão-GO"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker ceresGOMarker=Marker(
  markerId: MarkerId("77"),
  position: LatLng(-15.3117896,-49.6068364),
  infoWindow: InfoWindow(title:"Hemocentro de Ceres", snippet: "Ceres-GO"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker rioVerdeGOMarker=Marker(
  markerId: MarkerId("78"),
  position: LatLng(-17.790407,-50.9253184),
  infoWindow: InfoWindow(title:"Hemocentro Rio Verde", snippet: "Rio Verde-GO"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker formosaGOMarker=Marker(
  markerId: MarkerId("79"),
  position: LatLng(-15.5481566,-47.3220492),
  infoWindow: InfoWindow(title:"UCT Formosa", snippet: "Formosa-GO"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker porangatuGOMarker=Marker(
  markerId: MarkerId("80"),
  position: LatLng(-13.4421593,-49.1527626),
  infoWindow: InfoWindow(title:"Banco de Sangue Porangatu", snippet: "Porangatu-GO"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker quirinopolisGOMarker=Marker(
  markerId: MarkerId("81"),
  position: LatLng(-18.4525747,-50.4477423),
  infoWindow: InfoWindow(title:"Hemocentro de Quirinópolis", snippet: "Quirinópolis-GO"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//MINAS GERAIS
Marker pousoAlegreMGMarker=Marker(
  markerId: MarkerId("82"),
  position: LatLng(-22.2261893,-45.9314543),
  infoWindow: InfoWindow(title:"Hemocentro Regional de Pouso Alegre", snippet: "Pouso Alegre-Mg"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker bhMGMarker=Marker(
  markerId: MarkerId("83"),
  position: LatLng(-19.9246529,-43.9339109),
  infoWindow: InfoWindow(title:"Hemocentro de Belo Horizonte", snippet: "Belo Horizonte-MG"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker beloHorizonteMGMarker=Marker(
  markerId: MarkerId("84"),
  position: LatLng(-19.9295396,-43.9258879),
  infoWindow: InfoWindow(title:"Fundação Centro de Hematologia e Hemoterapia de Minas Gerais", snippet: "Belo Horizante-MG"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker uberabaMGMarker=Marker(
  markerId: MarkerId("85"),
  position: LatLng(-19.7568086,-47.932933),
  infoWindow: InfoWindow(title:"Hemocentro Regional de Uberaba", snippet: "Uberaba-MG"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker uberlandiaMGMarker=Marker(
  markerId: MarkerId("86"),
  position: LatLng(-18.8810442,-48.2635475),
  infoWindow: InfoWindow(title:"Hemominas Uberlândia", snippet: "Uberlândia-MG"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker passosMGMarker=Marker(
  markerId: MarkerId("87"),
  position: LatLng(-20.7266571,-46.6141238),
  infoWindow: InfoWindow(title:"HEMOMINAS - Núcleo Regional de Passos", snippet: "Passos-MG"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker manhuacuMGMarker=Marker(
  markerId: MarkerId("89"),
  position: LatLng(-20.256806,-42.0327396),
  infoWindow: InfoWindow(title:"Hemocentro - Núcleo Regional de Manhuaçu", snippet: "Manhuaçu-MG"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker patosMinasMGMarker=Marker(
  markerId: MarkerId("90"),
  position: LatLng(-18.5941759,-46.5234535),
  infoWindow: InfoWindow(title:"Fundação Hemominas", snippet: "Patos de Minas-MG"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker lagoaSantaMGMarker=Marker(
  markerId: MarkerId("91"),
  position: LatLng(-19.6641729,-43.9161954),
  infoWindow: InfoWindow(title:"Centro de Tecidos Biológicos de Minas Gerais - Cetebio", snippet: "Lagoa Santa-MG"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker montesClarosMGMarker=Marker(
  markerId: MarkerId("92"),
  position: LatLng(-16.7317934,-43.8732415),
  infoWindow: InfoWindow(title:"Hemocentro Regional Fundação Hemominas", snippet: "Montes Claros-MG"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker ituiutabaMGMarker=Marker(
  markerId: MarkerId("93"),
  position: LatLng(-18.9915261,-49.4633782),
  infoWindow: InfoWindow(title:"Hemonúcleo - Ituiutaba", snippet: "Ituiutaba-MG"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker valadresMGMarker=Marker(
  markerId: MarkerId("94"),
  position: LatLng(-18.8541549,-41.9417324),
  infoWindow: InfoWindow(title:"Hemocentro de Governador Valadares", snippet: "Valadares-MG"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker vldMGMarker=Marker(
  markerId: MarkerId("95"),
  position: LatLng(-18.8515921,-41.9492912),
  infoWindow: InfoWindow(title:"Fundação Hemominas Valadares", snippet: "Valadares-MG"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker pocosCaldasMGMarker=Marker(
  markerId: MarkerId("97"),
  position: LatLng(-21.7846108,-46.5551228),
  infoWindow: InfoWindow(title:"Fundação Hemominas Unidade Poços de Caldas", snippet: "Poços de Caldas-MG"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker divinopolisMGMarker=Marker(
  markerId: MarkerId("98"),
  position: LatLng(-20.1180442,-44.8852596),
  infoWindow: InfoWindow(title:"Hemonúcleo de Divinópolis", snippet: "Divinópolis-MG"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker curveloMGMarker=Marker(
  markerId: MarkerId("99"),
  position: LatLng(-18.7554803,-44.4298702),
  infoWindow: InfoWindow(title:"Laboratório Hemocentro", snippet: "Curvelo-MG"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker seteLagoasMGMarker=Marker(
  markerId: MarkerId("100"),
  position: LatLng(-19.462426,-44.2315847),
  infoWindow: InfoWindow(title:"Núcleo Regional Hemominas", snippet: "Sete Lagoas-MG"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//ESPIRITO SANTO
Marker vitoriaESMarker=Marker(
  markerId: MarkerId("101"),
  position: LatLng(-20.2979775,-40.3191252),
  infoWindow: InfoWindow(title:"HEMOES", snippet: "Vitória-ES"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker saoMateusESMarker=Marker(
  markerId: MarkerId("102"),
  position: LatLng(-18.7271397,-39.838925),
  infoWindow: InfoWindow(title:"Hemocentro de São Mateus", snippet: "São Mateus-ES"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker colatinaESMarker=Marker(
  markerId: MarkerId("103"),
  position: LatLng(-19.535915,-40.6337325),
  infoWindow: InfoWindow(title:"Hemocentro de Colatina", snippet: "Colatina-ES"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker esvitoriaESMarker=Marker(
  markerId: MarkerId("104"),
  position: LatLng(-20.3167794,-40.3422337),
  infoWindow: InfoWindow(title:"Hemoclínica Serviços de Hemoterapia", snippet: "Vitória-ES"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker linharesESMarker=Marker(
  markerId: MarkerId("105"),
  position: LatLng(-19.3975783,-40.0730568),
  infoWindow: InfoWindow(title:"Hemocentro Regional de Linhares", snippet: "Linhares-ES"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

//RIO DE JANEIRO

Marker rioJaneiroRJMarker=Marker(
  markerId: MarkerId("106"),
  position: LatLng(-22.9088002,-43.1909694),
  infoWindow: InfoWindow(title:"Hemorio", snippet: "Rio de Janeiro-RJ"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker rioRJMarker=Marker(
  markerId: MarkerId("107"),
  position: LatLng(-22.901012,-43.2843877),
  infoWindow: InfoWindow(title:"Hemocentro São Lucas - Unidade Rio de Janeiro", snippet: "Rio de Janeiro-RJ"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );
  
Marker laranjeirasRJMarker=Marker(
  markerId: MarkerId("108"),
  position: LatLng(-22.9367891,-43.1925976),
  infoWindow: InfoWindow(title:"Hemonúcleo Zona Sul", snippet: "Rio de Janeiro-RJ"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker militarRJMarker=Marker(
  markerId: MarkerId("109"),
  position: LatLng(-22.9130438,-43.2060461),
  infoWindow: InfoWindow(title:"Hospital Central da Polícia Militar", snippet: "Rio de Janeiro-RJ"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker hupeRJMarker=Marker(
  markerId: MarkerId("110"),
  position: LatLng(-22.9146836,-43.2392913),
  infoWindow: InfoWindow(title:"HUPE - Hospital Universitário Pedro Ernesto", snippet: "Rio de Janeiro-RJ"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker associadosRJMarker=Marker(
  markerId: MarkerId("111"),
  position: LatLng(-22.9540729,-43.1977915),
  infoWindow: InfoWindow(title:"-22.9540729,-43.1977915", snippet: "Rio de Janeiro-RJ"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker incaRJMarker=Marker(
  markerId: MarkerId("112"),
  position: LatLng(-22.9123975,-43.1908154),
  infoWindow: InfoWindow(title:"Instituto Nacional de Câncer - INCA", snippet: "Rio de Janeiro-RJ"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );
//PARANA
Marker jacarezinhoPRMarker=Marker(
  markerId: MarkerId("113"),
  position: LatLng(-23.1616246,-49.9780737),
  infoWindow: InfoWindow(title:"Hemocentro - Unidade de Coleta e Transfusão de Jacarezinho", snippet: "Jacarezinho-PR"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker londrinaPRMarker=Marker(
  markerId: MarkerId("114"),
  position: LatLng(-23.3272062,-51.1297238),
  infoWindow: InfoWindow(title:"Hemocentro Regional de Londrina", snippet: "Londrina-PR"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker curitibaPRMarker=Marker(
  markerId: MarkerId("115"),
  position: LatLng(-25.4251747,-49.2594449),
  infoWindow: InfoWindow(title:"Hemocentro Coordenador – 2ªRS", snippet: "Curitiba-PR"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

Marker cascavelPRMarker=Marker(
  markerId: MarkerId("116"),
  position: LatLng(-24.9736595,-53.4978484),
  infoWindow: InfoWindow(title:"Hemocentro de Cascavel Hemepar", snippet: "Cascavel-PR"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );/*
Marker =Marker(
  markerId: MarkerId("117"),
  position: LatLng(),
  infoWindow: InfoWindow(title:"", snippet: ""),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );
Marker =Marker(
  markerId: MarkerId("118"),
  position: LatLng(),
  infoWindow: InfoWindow(title:"", snippet: ""),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );
Marker =Marker(
  markerId: MarkerId("119"),
  position: LatLng(),
  infoWindow: InfoWindow(title:"", snippet: ""),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );
Marker =Marker(
  markerId: MarkerId("120"),
  position: LatLng(),
  infoWindow: InfoWindow(title:"", snippet: ""),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );
Marker =Marker(
  markerId: MarkerId("121"),
  position: LatLng(),
  infoWindow: InfoWindow(title:"", snippet: ""),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );
Marker =Marker(
  markerId: MarkerId("122"),
  position: LatLng(),
  infoWindow: InfoWindow(title:"", snippet: ""),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );
Marker =Marker(
  markerId: MarkerId("123"),
  position: LatLng(),
  infoWindow: InfoWindow(title:"", snippet: ""),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );
Marker =Marker(
  markerId: MarkerId("124"),
  position: LatLng(),
  infoWindow: InfoWindow(title:"", snippet: ""),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );
Marker =Marker(
  markerId: MarkerId("125"),
  position: LatLng(),
  infoWindow: InfoWindow(title:"", snippet: ""),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );
Marker =Marker(
  markerId: MarkerId("126"),
  position: LatLng(),
  infoWindow: InfoWindow(title:"", snippet: ""),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );
*/