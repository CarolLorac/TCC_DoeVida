import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class Mapa extends StatefulWidget {
  const Mapa({ key }) : super(key: key);

  @override
  _MapaState createState() => _MapaState();
}



class _MapaState extends State<Mapa> {
  
  List<LatLng> tappedPoints = [];

  void _handleTap(LatLng latlng) {
    setState(() {
      print(latlng);
      tappedPoints.add(latlng);
    });
  }

  @override
  Widget build(BuildContext context) {

    var markers = tappedPoints.map((latlng) {
      return Marker(
        width: 80.0,
        height: 80.0,
        point: latlng,
        builder: (ctx) => GestureDetector(
          onTap: () {
            // Mostrar uma SnackBar quando clicar em um marcador
            Scaffold.of(ctx).showSnackBar(SnackBar(
                content: Text("Latitude =" +
                    latlng.latitude.toString() +
                    " :: Longitude = " +
                    latlng.longitude.toString())));
          },
          child: Container(
            child: Icon(
              // Icone do marcador
              Icons.pin_drop,
              color: Colors.red,
            ),
          ),
        ),
      );
    }).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Mapa",style: TextStyle(color: Colors.black54),),
      ),

      body: FlutterMap(
              options: MapOptions(

                // Coordenada central do mapa.
                  center: LatLng(-15.799862, -47.864195),
                  // Quantidade de zoom do mapa.
                  zoom: 17,
                  onTap: _handleTap),

              layers: [
                // Url do mapa.
                TileLayerOptions(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                ),
                MarkerLayerOptions(markers: markers)
              ],
            ),
     )
    ); 
    
  }
}

