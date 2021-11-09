import 'package:app_doevida/sangues.dart';
import 'package:app_doevida/escreverSol.dart';
import 'package:flutter/material.dart';

class SolicitacaoDoacao extends StatefulWidget {
  const SolicitacaoDoacao({  key }) : super(key: key);

  @override
  _SolicitacaoDoacaoState createState() => _SolicitacaoDoacaoState();
}

class _SolicitacaoDoacaoState extends State<SolicitacaoDoacao> {

  String cidade = "Campinas";
  String estado = "SP";
  String hospital = "Hospital de Clínicas Unicamp";
  String informacaoExtra = 'É urgente!! Se ela não receber o sangue em 2 dois ela pode falecer';
  String data= '10/10/2021';
  String nomeSolicitante = 'Caroline de Souza';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 8,
        backgroundColor: Colors.white,
        title: Text('Solicitações de doação',
        textAlign: TextAlign.left, 
        style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(icon: Icon(Icons.volunteer_activism, color: Colors.black,size: 30,), onPressed: (){
           Navigator.push(context,
            MaterialPageRoute(builder: (context) => Sangues()));
          })
        ],
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
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
      ),
        child: Column(
          children: [

                  Container(
                  margin: EdgeInsets.only(right: 260,top:15),
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:5.0),
                        child: Text("Filtrar"),
                      ),
                      Icon(Icons.arrow_drop_down_outlined, size: 30,)
                    ],
                  ),),
                  Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          ),
                          width: double.maxFinite,
                          height: 302,
                         
                           
                           child:    Padding(
                             padding: const EdgeInsets.only(top:15.0, right:15, left:8),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                  Row(
                                    children: [
                                      Text("Caroline de Souza", textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold),),
                                      Container(width: 190,),
                                      Text("O+",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)
                                    ],
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                                    child: Text("Meu filho de 4 anos está com câncer e precisa de sangue para realizar a cirurgia de retirada do tumor."),
                                  )
                                  ,
                                  
                                  Container(height: 10,),
                                  
                                  
                                  
                                   Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top:5.0),
                                        child: Icon(Icons.place),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right:20,left:5),
                                        child: Text("Hospital de Clínicas Unicamp"),
                                      ),
                                      
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:28.0),
                                    child: Text("$cidade-$estado"),
                                  ),
                                   /*  Padding(
                                    padding: const EdgeInsets.only(top:10.0, left:5),
                                    child: Text('"$informacaoExtra"'),
                                  ), */
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0, top: 15),
                                    child: Text.rich(
                                      TextSpan(children: <TextSpan>[TextSpan(text: 'Nome paciente:',style: TextStyle(fontWeight: FontWeight.w600) ),TextSpan(text: ' João Carlos Medotti',), ])
                                  )), 
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0, top: 3),
                                    child: Text.rich(
                                      TextSpan(children: <TextSpan>[TextSpan(text: 'Nome solicitante:',style: TextStyle(fontWeight: FontWeight.w600) ),TextSpan(text: ' $nomeSolicitante',), ])
                                  )), 
                                 Padding(
                                    padding: const EdgeInsets.only(left:8.0, top: 3),
                                    child: Text.rich(
                                      TextSpan(children: <TextSpan>[TextSpan(text: 'Telefone solicitante:',style: TextStyle(fontWeight: FontWeight.w600) ),TextSpan(text: ' (19) 98841-3762',), ])
                                  )), 
                                 Padding(
                                    padding: const EdgeInsets.only(left:8.0, top: 3),
                                    child: Text.rich(
                                      TextSpan(children: <TextSpan>[TextSpan(text: 'Quantidade de bolsas:',style: TextStyle(fontWeight: FontWeight.w600) ),TextSpan(text: ' 3',), ])
                                  )), 
                                     
                                  
                                  Padding(
                                    padding: const EdgeInsets.only(top:5, right:8),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(bottom:8.0),
                                          child: Text("15/10/2021", style: TextStyle(color: Colors.grey[400]),),
                                        ),
                                        Icon(Icons.arrow_drop_up_outlined, size: 35,)
                                      ],
                                    ),
                                  ),
                            ],),
                           ),
                            
                          
                        ),
                      ),
                        
                              Padding(
                        padding: const EdgeInsets.only(top: 5, left: 20,right: 20,bottom: 25),
                        child: Container(
                          
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          ),
                          width: double.maxFinite,
                          height: 205,
                         
                           
                           child:    Padding(
                             padding: const EdgeInsets.only(top:15.0, right:15, left:8),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                  Row(
                                    children: [
                                      Text("Paula Prevelato", textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold),),
                                      Container(width: 200,),
                                      Text("AB-",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)
                                    ],
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                                    child: Text("Minha mãe sofreu um acidente de carro e está na UTI em estado grave. Preciso urgente de bolsas de sangue!!"),
                                  )
                                  ,
                                  
                                  Container(height: 10,),
                                  
                                  
                                  
                                   Row(
                                    children: [
                                      Icon(Icons.place),
                        
                                          Padding(
                                            padding: const EdgeInsets.only(right:20,left:5),
                                            child: Text("Hospital Munical Dr. Mário Gatti"),
                                          ),
                                         
                                        ],
                                   ),
                                   Padding(
                                    padding: const EdgeInsets.only(left:28.0),
                                    child:  Text("$cidade-$estado"),
                                    ),
                                      
                                    
                                  
                                   /* Padding(
                                    padding: const EdgeInsets.only(top:10.0, left:5),
                                    child: Text('"$informacaoExtra"'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0),
                                    child: Text("Nome paciente: Silvane Cristina Barbieri"),
                                  ),  
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0,top:8),
                                    child:Text("Nome Solicitante: $nomeSolicitante"),
                                  ),

                                     
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0,top:3),
                                    child:Text("Telefone Solicitante: (19) 98841-3762"),),
                                  
                                 
                                  
                                   */
                                  Padding(
                                    padding: const EdgeInsets.only(top:5, right:8),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(bottom:8.0),
                                          child: Text("$data", style: TextStyle(color: Colors.grey[400]),),
                                        ),
                                        Icon(Icons.arrow_drop_down_outlined, size: 35,)
                                      ],
                                    ),
                                  ),
                            ],),
                           ),
                            
                          
                        ),
                      ),
                        
            ]
        ),
      ),
                   
        
      
                        
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 30,),
        backgroundColor: Colors.cyan[200],
        onPressed: (){
          Navigator.push(context, 
          MaterialPageRoute(builder: (context)=> Teste()));
        },
      ),
    );
  }
}
//TEXT DIRECTION