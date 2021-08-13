import 'package:flutter_test/flutter_test.dart';
import 'package:auto_notebook/models/transport_vehicle.dart';

void main() {
  // группа тестов
  group("TransportVehicle", () {
    // первый тест на пустой стек
    test("TransportVehicle should has default values", () {
      // expect принимает текущее значение
      // и сравнивает его с правильным
      // если значения не совпадают, тест не пройден
      expect(TransportVehicle().id, 0);
      expect(TransportVehicle().licensePlate, 'не определён');
    });

    test("TransportVehicle should set value", () {
      expect(TransportVehicle(id: 1, licensePlate: 'К340КМ').id, 1);
      expect(TransportVehicle(id: 1, licensePlate: 'К340КМ').licensePlate, 'К340КМ');
    });

    test("kilometresTravelled should be greater then 0", () {
      expect(() {
        TransportVehicle(id: 1, licensePlate: 'К340КМ', kilometresTravelled: -1);
      }, throwsA(isA<AssertionError>()));
    });


    test("TransportVehicle fields should not to be changed", () {
      TransportVehicle transportVehicle = TransportVehicle(id: 1, licensePlate: 'К340КМ');

      expect(transportVehicle.copyWith(id: 2).id, 2);
    });

    test("TransportVehicle toJson", () {
      TransportVehicle transportVehicle = TransportVehicle(id: 1, licensePlate: 'К340КМ');

      expect(transportVehicle.toJson(),  {
        'id': 1,
        'licensePlate': 'К340КМ',
        'vehicleType': 'CAR',
        'color': 'не определён',
        'description': '',
        'kilometresTravelled': 0
      });

      expect(transportVehicle.toJson().toString(), '{id: 1, licensePlate: К340КМ, vehicleType: CAR, color: не определён, description: , kilometresTravelled: 0}');
    });
  });
}