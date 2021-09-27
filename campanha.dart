
import 'package:flutter/material.dart';

class Campanha extends StatefulWidget {
  const Campanha({ key }) : super(key: key);

  @override
  _CampanhaState createState() => _CampanhaState();
}

class _CampanhaState extends State<Campanha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.cyan[50]),
    );
  }
}