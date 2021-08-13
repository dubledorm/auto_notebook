import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'transport_vehicle.dart';
import 'dart:math';

part 'transport_vehicle_list.freezed.dart';

part 'transport_vehicle_list.g.dart';

const _maxRangeId = 1000000;

@freezed
class TransportVehicleList with _$TransportVehicleList {
  const TransportVehicleList._(); // Added constructor

  factory TransportVehicleList(
      {@Default([])
          List<TransportVehicle> vehicles // Список всех транспортных средств
      }) = _TransportVehicleList;

  factory TransportVehicleList.fromJson(Map<String, dynamic> json) =>
      _$TransportVehicleListFromJson(json);

  TransportVehicle? find(int id) {
    try {
      return this.vehicles.where((vehicle) => vehicle.id == id).first;
    } catch (e) {
      return null;
    }
  }

  TransportVehicle? add(TransportVehicle vehicle) {
    if (this
            .vehicles
            .where(
                (element) => element.copyWith(id: 0) == vehicle.copyWith(id: 0))
            .length > 0) return null;

    TransportVehicle newVehicle = vehicle.copyWith(id: _newId());
    this.vehicles.add(newVehicle);
    return newVehicle;
  }

  void remove(int id) {
    TransportVehicle? vehicle = this.find(id);
    if (vehicle == null) return;
    this.vehicles.remove(vehicle);
  }

  TransportVehicle? replace(int id, TransportVehicle newVehicleValue) {
    TransportVehicle? oldVehicle = this.find(id);
    if (oldVehicle == null) return null;
    if (this
            .vehicles
            .where((element) =>
                element.copyWith(id: 0) == newVehicleValue.copyWith(id: 0) &&
                element.id != id)
            .length > 0) return null;

    remove(id);
    TransportVehicle newVehicle = newVehicleValue.copyWith(id: id);
    this.vehicles.add(newVehicle);
    return newVehicle;
  }

  int _newId() {
    var random = new Random();
    var newId = random.nextInt(_maxRangeId);
    for (; this.find(newId) != null; newId = random.nextInt(_maxRangeId)) {}
    return newId;
  }
}

final List<TransportVehicle> myVehicles = [
  TransportVehicle(id: 0, vehicleType: TransportVehicleType.CAR),
  TransportVehicle(id: 1, vehicleType: TransportVehicleType.MOTO),
  TransportVehicle(id: 2, vehicleType: TransportVehicleType.OTHER)
];

//TransportVehicleList transportVehicleList(vehicles: vehicles);
