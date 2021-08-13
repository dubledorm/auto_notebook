// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_vehicle_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransportVehicleList _$_$_TransportVehicleListFromJson(
    Map<String, dynamic> json) {
  return _$_TransportVehicleList(
    vehicles: (json['vehicles'] as List<dynamic>?)
            ?.map((e) => TransportVehicle.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_TransportVehicleListToJson(
        _$_TransportVehicleList instance) =>
    <String, dynamic>{
      'vehicles': instance.vehicles,
    };
