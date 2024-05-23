import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Maps3 extends StatefulWidget {
  const Maps3({Key? key}) : super(key : key);

  @override
  _Maps3State createState() => _Maps3State();
}

class _Maps3State extends State<Maps3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('THEUZO MAPS'),
          centerTitle: true,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(center: LatLng(50.03378176418842, 19.254367505881774), zoom: 3),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.thunderforest.com/spinal-map/{z}/{x}/{y}.png?apikey=71f92acf72bd4aa987703bbe92e28cef',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point: LatLng(50.03378176418842, 19.254367505881774),
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
