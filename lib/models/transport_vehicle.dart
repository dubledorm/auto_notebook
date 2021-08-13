import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'transport_vehicle.freezed.dart';
part 'transport_vehicle.g.dart';

// Определяем возможные типы транспортного средства
enum TransportVehicleType { CAR, MOTO, OTHER }
Map<TransportVehicleType, IconData> _vehicleIcons = {
  TransportVehicleType.CAR: Icons.car_rental,
  TransportVehicleType.MOTO: Icons.motorcycle,
  TransportVehicleType.OTHER: Icons.emoji_transportation
};


// Класс хранит основную информацию о транспортном средстве
@freezed
class TransportVehicle with _$TransportVehicle {
  const TransportVehicle._(); // Added constructor

  @Assert('kilometresTravelled >= 0')
  const factory TransportVehicle({ @Default(0) int id,
    @Default('не определён') String licensePlate, // номер регистрации
    @Default(TransportVehicleType.CAR) TransportVehicleType vehicleType, // Тип транспортного средства
    @Default('не определён') String color, // Цвет
    @Default('') String description, // Описание
    @Default(0) int kilometresTravelled // Пробег в киллометрах
  }) = _TransportVehicle;
  factory TransportVehicle.fromJson(Map<String, dynamic> json) => _$TransportVehicleFromJson(json);

  Icon icon() {
    // Сопоставляем иконки
    return Icon(_vehicleIcons[vehicleType]);
  }
}
