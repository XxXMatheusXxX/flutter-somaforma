import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Maps2 extends StatefulWidget {
  const Maps2({Key? key}) : super(key : key);

  @override
  _Maps2State createState() => _Maps2State();
}

class _Maps2State extends State<Maps2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('THEUZO MAPS'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(center: LatLng(-16.67908092366217, -49.41207835884991), zoom: 3),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.thunderforest.com/landscape/{z}/{x}/{y}.png?apikey=71f92acf72bd4aa987703bbe92e28cef',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point: LatLng(-16.67908092366217, -49.41207835884991),
                      builder: (ctx) => Container(
                        child: Icon(Icons.location_on, color: Colors.red,),
                      ),
                    ),

                  ],
                )
              ],
            )
          ],
        )
    );
  }
}
