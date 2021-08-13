// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transport_vehicle_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransportVehicleList _$TransportVehicleListFromJson(Map<String, dynamic> json) {
  return _TransportVehicleList.fromJson(json);
}

/// @nodoc
class _$TransportVehicleListTearOff {
  const _$TransportVehicleListTearOff();

  _TransportVehicleList call({List<TransportVehicle> vehicles = const []}) {
    return _TransportVehicleList(
      vehicles: vehicles,
    );
  }

  TransportVehicleList fromJson(Map<String, Object> json) {
    return TransportVehicleList.fromJson(json);
  }
}

/// @nodoc
const $TransportVehicleList = _$TransportVehicleListTearOff();

/// @nodoc
mixin _$TransportVehicleList {
  List<TransportVehicle> get vehicles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportVehicleListCopyWith<TransportVehicleList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportVehicleListCopyWith<$Res> {
  factory $TransportVehicleListCopyWith(TransportVehicleList value,
          $Res Function(TransportVehicleList) then) =
      _$TransportVehicleListCopyWithImpl<$Res>;
  $Res call({List<TransportVehicle> vehicles});
}

/// @nodoc
class _$TransportVehicleListCopyWithImpl<$Res>
    implements $TransportVehicleListCopyWith<$Res> {
  _$TransportVehicleListCopyWithImpl(this._value, this._then);

  final TransportVehicleList _value;
  // ignore: unused_field
  final $Res Function(TransportVehicleList) _then;

  @override
  $Res call({
    Object? vehicles = freezed,
  }) {
    return _then(_value.copyWith(
      vehicles: vehicles == freezed
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<TransportVehicle>,
    ));
  }
}

/// @nodoc
abstract class _$TransportVehicleListCopyWith<$Res>
    implements $TransportVehicleListCopyWith<$Res> {
  factory _$TransportVehicleListCopyWith(_TransportVehicleList value,
          $Res Function(_TransportVehicleList) then) =
      __$TransportVehicleListCopyWithImpl<$Res>;
  @override
  $Res call({List<TransportVehicle> vehicles});
}

/// @nodoc
class __$TransportVehicleListCopyWithImpl<$Res>
    extends _$TransportVehicleListCopyWithImpl<$Res>
    implements _$TransportVehicleListCopyWith<$Res> {
  __$TransportVehicleListCopyWithImpl(
      _TransportVehicleList _value, $Res Function(_TransportVehicleList) _then)
      : super(_value, (v) => _then(v as _TransportVehicleList));

  @override
  _TransportVehicleList get _value => super._value as _TransportVehicleList;

  @override
  $Res call({
    Object? vehicles = freezed,
  }) {
    return _then(_TransportVehicleList(
      vehicles: vehicles == freezed
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<TransportVehicle>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransportVehicleList extends _TransportVehicleList
    with DiagnosticableTreeMixin {
  _$_TransportVehicleList({this.vehicles = const []}) : super._();

  factory _$_TransportVehicleList.fromJson(Map<String, dynamic> json) =>
      _$_$_TransportVehicleListFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<TransportVehicle> vehicles;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransportVehicleList(vehicles: $vehicles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransportVehicleList'))
      ..add(DiagnosticsProperty('vehicles', vehicles));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransportVehicleList &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(vehicles);

  @JsonKey(ignore: true)
  @override
  _$TransportVehicleListCopyWith<_TransportVehicleList> get copyWith =>
      __$TransportVehicleListCopyWithImpl<_TransportVehicleList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransportVehicleListToJson(this);
  }
}

abstract class _TransportVehicleList extends TransportVehicleList {
  factory _TransportVehicleList({List<TransportVehicle> vehicles}) =
      _$_TransportVehicleList;
  _TransportVehicleList._() : super._();

  factory _TransportVehicleList.fromJson(Map<String, dynamic> json) =
      _$_TransportVehicleList.fromJson;

  @override
  List<TransportVehicle> get vehicles => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransportVehicleListCopyWith<_TransportVehicleList> get copyWith =>
      throw _privateConstructorUsedError;
}
