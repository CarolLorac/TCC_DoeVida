import 'package:app_doevida/campanha.dart';
import 'package:app_doevida/experiencias.dart';
import 'package:flutter/material.dart';

class CampExper extends StatefulWidget {
  const CampExper({key}) : super(key: key);

  @override
  _CampExperState createState() => _CampExperState();
}

class _CampExperState extends State<CampExper> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
         appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorColor: Colors.cyan,
              labelColor: Colors.black,
              indicatorWeight: 2.5,
              labelStyle: TextStyle(fontSize: 20),
              tabs: <Widget>[
                Tab(text: 'Campanhas',),
                Tab(text: 'Experiências',)
                ],),),),
          body: TabBarView(
            children: <Widget> [
              new Campanha(),          
              new Experiencias(),
            ],
          ),
      ),
      );
      
  }
}
    