// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransportVehicle _$_$_TransportVehicleFromJson(Map<String, dynamic> json) {
  return _$_TransportVehicle(
    id: json['id'] as int? ?? 0,
    licensePlate: json['licensePlate'] as String? ?? 'не определён',
    vehicleType: _$enumDecodeNullable(
            _$TransportVehicleTypeEnumMap, json['vehicleType']) ??
        TransportVehicleType.CAR,
    color: json['color'] as String? ?? 'не определён',
    description: json['description'] as String? ?? '',
    kilometresTravelled: json['kilometresTravelled'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_TransportVehicleToJson(
        _$_TransportVehicle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'licensePlate': instance.licensePlate,
      'vehicleType': _$TransportVehicleTypeEnumMap[instance.vehicleType],
      'color': instance.color,
      'description': instance.description,
      'kilometresTravelled': instance.kilometresTravelled,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$TransportVehicleTypeEnumMap = {
  TransportVehicleType.CAR: 'CAR',
  TransportVehicleType.MOTO: 'MOTO',
  TransportVehicleType.OTHER: 'OTHER',
};
