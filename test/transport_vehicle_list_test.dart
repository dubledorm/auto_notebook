import 'package:flutter_test/flutter_test.dart';
import 'package:auto_notebook/models/transport_vehicle_list.dart';
import 'package:auto_notebook/models/transport_vehicle.dart';

final List<TransportVehicle> testVehicles = [
  TransportVehicle(id: 0, vehicleType: TransportVehicleType.CAR),
  TransportVehicle(id: 1, vehicleType: TransportVehicleType.MOTO),
  TransportVehicle(id: 2, vehicleType: TransportVehicleType.OTHER)
];

void main() {
  // группа тестов
  group("TransportVehicleList", () {
    test("TransportVehicleList should be created", () {
      expect(TransportVehicleList(vehicles: testVehicles).vehicles.length, 3);
    });

    test("TransportVehicleList to json", () {
      expect(
          TransportVehicleList(vehicles: testVehicles)
              .toJson()['vehicles']
              .length,
          3);
    });

    test("TransportVehicleList to String", () {
      expect(TransportVehicleList().toJson().toString(), '{vehicles: []}');
      expect(
          TransportVehicleList(vehicles: [
            TransportVehicle(id: 0, vehicleType: TransportVehicleType.CAR)
          ]).toJson().toString(),
          '{vehicles: [TransportVehicle(id: 0, licensePlate: не определён, vehicleType: TransportVehicleType.CAR, color: не определён, description: , kilometresTravelled: 0)]}');
      expect(
          TransportVehicleList(vehicles: [
            TransportVehicle(
                id: 0,
                description: 'а здесь с кавычками \' и вот с такими "',
                vehicleType: TransportVehicleType.CAR)
          ]).toJson().toString(),
          '{vehicles: [TransportVehicle(id: 0, licensePlate: не определён, vehicleType: TransportVehicleType.CAR, color: не определён, description: а здесь с кавычками \' и вот с такими ", kilometresTravelled: 0)]}');
    });
  });

  group('TransportVehicleList find', () {
    test("should be return last element", () {
      expect(TransportVehicleList(vehicles: testVehicles).find(2), testVehicles.last);
    });

    test("should be return null", () {
      expect(TransportVehicleList().find(5), null);
      expect(TransportVehicleList(vehicles: testVehicles).find(5), null);
    });
  });

  group('TransportVehicleList add', () {
    test("should be add element 1", () {
      TransportVehicleList vehicleList = TransportVehicleList(vehicles: []);
      vehicleList.vehicles.add(testVehicles.first);
      expect(vehicleList.vehicles.length, 1);
    });

    test("should be add element 2", () {
      TransportVehicleList vehicleList = TransportVehicleList(vehicles: []);
      vehicleList.add(testVehicles.first);
      expect(vehicleList.vehicles.length, 1);
      expect(vehicleList.vehicles.first.vehicleType, TransportVehicleType.CAR);
    });

    test("should not add double", () {
      TransportVehicleList vehicleList = TransportVehicleList(vehicles: [
        TransportVehicle(id: 0, vehicleType: TransportVehicleType.CAR),
        TransportVehicle(id: 1, vehicleType: TransportVehicleType.MOTO),
        TransportVehicle(id: 2, vehicleType: TransportVehicleType.OTHER)
      ]);
      expect(vehicleList.vehicles.length, 3);
      vehicleList.add(testVehicles.first);
      expect(vehicleList.vehicles.length, 3);
      expect(vehicleList.add(testVehicles.first), null);
      vehicleList.add(testVehicles.first.copyWith(description: 'new description'));
      expect(vehicleList.vehicles.length, 4);
    });
  });

  group('TransportVehicleList remove', () {
    test("should be remove element", () {
      TransportVehicleList vehicleList =
          TransportVehicleList(vehicles: testVehicles);
      expect(vehicleList.vehicles.length, 3);
      vehicleList.remove(testVehicles.first.id);
      expect(vehicleList.vehicles.length, 2);
    });

    test("should be not exception", () {
      TransportVehicleList vehicleList = TransportVehicleList(vehicles: []);
      expect(vehicleList.vehicles.length, 0);
      vehicleList.remove(testVehicles.first.id);
      expect(vehicleList.vehicles.length, 0);
    });
  });

  group('TransportVehicleList replace', () {
    final List<TransportVehicle> testGroupVehicles = [
      TransportVehicle(id: 10, vehicleType: TransportVehicleType.CAR),
      TransportVehicle(id: 1, vehicleType: TransportVehicleType.MOTO),
      TransportVehicle(id: 20, vehicleType: TransportVehicleType.OTHER)
    ];

    test("should replace element", () {
      TransportVehicleList vehicleList = TransportVehicleList(vehicles: testGroupVehicles);
      expect(vehicleList.vehicles.length, 3);
      TransportVehicle? replacedVehicle = vehicleList.replace(1, TransportVehicle(description: 'изменённый элемент'));
      expect(replacedVehicle != null, true);
      expect(replacedVehicle!.description, 'изменённый элемент');
    });

    test("should be not exception", () {
      TransportVehicleList vehicleList1 = TransportVehicleList(vehicles: []);
      expect(vehicleList1.vehicles.length, 0);
      TransportVehicle? replacedVehicle = vehicleList1.replace(1, TransportVehicle(description: 'изменённый элемент'));
      expect(replacedVehicle == null, true);
    });
  });
}
