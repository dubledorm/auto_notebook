// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transport_vehicle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransportVehicle _$TransportVehicleFromJson(Map<String, dynamic> json) {
  return _TransportVehicle.fromJson(json);
}

/// @nodoc
class _$TransportVehicleTearOff {
  const _$TransportVehicleTearOff();

  _TransportVehicle call(
      {int id = 0,
      String licensePlate = 'не определён',
      TransportVehicleType vehicleType = TransportVehicleType.CAR,
      String color = 'не определён',
      String description = '',
      int kilometresTravelled = 0}) {
    return _TransportVehicle(
      id: id,
      licensePlate: licensePlate,
      vehicleType: vehicleType,
      color: color,
      description: description,
      kilometresTravelled: kilometresTravelled,
    );
  }

  TransportVehicle fromJson(Map<String, Object> json) {
    return TransportVehicle.fromJson(json);
  }
}

/// @nodoc
const $TransportVehicle = _$TransportVehicleTearOff();

/// @nodoc
mixin _$TransportVehicle {
  int get id => throw _privateConstructorUsedError;
  String get licensePlate =>
      throw _privateConstructorUsedError; // номер регистрации
  TransportVehicleType get vehicleType =>
      throw _privateConstructorUsedError; // Тип транспортного средства
  String get color => throw _privateConstructorUsedError; // Цвет
  String get description => throw _privateConstructorUsedError; // Описание
  int get kilometresTravelled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportVehicleCopyWith<TransportVehicle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportVehicleCopyWith<$Res> {
  factory $TransportVehicleCopyWith(
          TransportVehicle value, $Res Function(TransportVehicle) then) =
      _$TransportVehicleCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String licensePlate,
      TransportVehicleType vehicleType,
      String color,
      String description,
      int kilometresTravelled});
}

/// @nodoc
class _$TransportVehicleCopyWithImpl<$Res>
    implements $TransportVehicleCopyWith<$Res> {
  _$TransportVehicleCopyWithImpl(this._value, this._then);

  final TransportVehicle _value;
  // ignore: unused_field
  final $Res Function(TransportVehicle) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? licensePlate = freezed,
    Object? vehicleType = freezed,
    Object? color = freezed,
    Object? description = freezed,
    Object? kilometresTravelled = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as TransportVehicleType,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      kilometresTravelled: kilometresTravelled == freezed
          ? _value.kilometresTravelled
          : kilometresTravelled // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TransportVehicleCopyWith<$Res>
    implements $TransportVehicleCopyWith<$Res> {
  factory _$TransportVehicleCopyWith(
          _TransportVehicle value, $Res Function(_TransportVehicle) then) =
      __$TransportVehicleCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String licensePlate,
      TransportVehicleType vehicleType,
      String color,
      String description,
      int kilometresTravelled});
}

/// @nodoc
class __$TransportVehicleCopyWithImpl<$Res>
    extends _$TransportVehicleCopyWithImpl<$Res>
    implements _$TransportVehicleCopyWith<$Res> {
  __$TransportVehicleCopyWithImpl(
      _TransportVehicle _value, $Res Function(_TransportVehicle) _then)
      : super(_value, (v) => _then(v as _TransportVehicle));

  @override
  _TransportVehicle get _value => super._value as _TransportVehicle;

  @override
  $Res call({
    Object? id = freezed,
    Object? licensePlate = freezed,
    Object? vehicleType = freezed,
    Object? color = freezed,
    Object? description = freezed,
    Object? kilometresTravelled = freezed,
  }) {
    return _then(_TransportVehicle(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as TransportVehicleType,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      kilometresTravelled: kilometresTravelled == freezed
          ? _value.kilometresTravelled
          : kilometresTravelled // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransportVehicle extends _TransportVehicle
    with DiagnosticableTreeMixin {
  const _$_TransportVehicle(
      {this.id = 0,
      this.licensePlate = 'не определён',
      this.vehicleType = TransportVehicleType.CAR,
      this.color = 'не определён',
      this.description = '',
      this.kilometresTravelled = 0})
      : assert(kilometresTravelled >= 0),
        super._();

  factory _$_TransportVehicle.fromJson(Map<String, dynamic> json) =>
      _$_$_TransportVehicleFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: 'не определён')
  @override
  final String licensePlate;
  @JsonKey(defaultValue: TransportVehicleType.CAR)
  @override // номер регистрации
  final TransportVehicleType vehicleType;
  @JsonKey(defaultValue: 'не определён')
  @override // Тип транспортного средства
  final String color;
  @JsonKey(defaultValue: '')
  @override // Цвет
  final String description;
  @JsonKey(defaultValue: 0)
  @override // Описание
  final int kilometresTravelled;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransportVehicle(id: $id, licensePlate: $licensePlate, vehicleType: $vehicleType, color: $color, description: $description, kilometresTravelled: $kilometresTravelled)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransportVehicle'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('licensePlate', licensePlate))
      ..add(DiagnosticsProperty('vehicleType', vehicleType))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('kilometresTravelled', kilometresTravelled));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransportVehicle &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.licensePlate, licensePlate) ||
                const DeepCollectionEquality()
                    .equals(other.licensePlate, licensePlate)) &&
            (identical(other.vehicleType, vehicleType) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleType, vehicleType)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.kilometresTravelled, kilometresTravelled) ||
                const DeepCollectionEquality()
                    .equals(other.kilometresTravelled, kilometresTravelled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(licensePlate) ^
      const DeepCollectionEquality().hash(vehicleType) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(kilometresTravelled);

  @JsonKey(ignore: true)
  @override
  _$TransportVehicleCopyWith<_TransportVehicle> get copyWith =>
      __$TransportVehicleCopyWithImpl<_TransportVehicle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransportVehicleToJson(this);
  }
}

abstract class _TransportVehicle extends TransportVehicle {
  const factory _TransportVehicle(
      {int id,
      String licensePlate,
      TransportVehicleType vehicleType,
      String color,
      String description,
      int kilometresTravelled}) = _$_TransportVehicle;
  const _TransportVehicle._() : super._();

  factory _TransportVehicle.fromJson(Map<String, dynamic> json) =
      _$_TransportVehicle.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get licensePlate => throw _privateConstructorUsedError;
  @override // номер регистрации
  TransportVehicleType get vehicleType => throw _privateConstructorUsedError;
  @override // Тип транспортного средства
  String get color => throw _privateConstructorUsedError;
  @override // Цвет
  String get description => throw _privateConstructorUsedError;
  @override // Описание
  int get kilometresTravelled => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransportVehicleCopyWith<_TransportVehicle> get copyWith =>
      throw _privateConstructorUsedError;
}
