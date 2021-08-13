import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../models/transport_vehicle.dart';

class TransportVehicleItem extends StatelessWidget {
  TransportVehicleItem({required this.vehicle})
      : super(key: ObjectKey(vehicle.id));

  final TransportVehicle vehicle;

  @override
  Widget build(BuildContext context) {
    return Container(height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        margin: EdgeInsets.symmetric(vertical: 2),
        // decoration: BoxDecoration(color: Colors.blue[500],
        // borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          children: <Widget>[
            IconButton(icon: vehicle.icon(),
                splashColor: Colors.blue[500],
                highlightColor: Colors.blue,
                onPressed: null),
            Expanded(child: Column(
                children: <Widget>[
                  Text("${vehicle.vehicleType}"),
                  Text("ewrtrretretret")
                ]
            )
            )
          ],

        )
    );
  }
}