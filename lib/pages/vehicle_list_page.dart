import 'package:flutter/material.dart';
import '../models/transport_vehicle_list.dart';
import 'vehicle_page.dart';
import '../smart_widgets/transport_vehicle_item.dart';
import 'vehicle_add_page.dart';

// Список транспортных средств
class VehicleListPage extends StatelessWidget {

  TransportVehicleList vehicleList = TransportVehicleList(vehicles: []);

  // build как мы уже отметили, строит
  // иерархию наших любимых виджетов
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vehicle List Page")),
      // зададим небольшие отступы для списка
      body: Padding(
        // объект EdgeInsets хранит четыре важные double переменные:
        // left, top, right, bottom - отступ слева, сверху, справа и снизу
        // EdgeInsets.all(10) - задает одинаковый отступ со всех сторон
        // EdgeInsets.only(left: 10, right: 15) - задает отступ для
        // определенной стороны или сторон
        // EdgeInsets.symmetric - позволяет указать одинаковые
        // отступы по горизонтали (left и right) и по вертикали (top и bottom)
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          // создаем наш список
          child: ListView(
            // map принимает другую функцию, которая
            // будет выполняться над каждым элементом
            // списка и возвращать новый элемент (виджет Material).
            // Результатом map является новый список
            // с новыми элементами, в данном случае
            // это Material виджеты
            children: myVehicles.map<Widget>((vehicle) {
              // Material используется для того,
              // чтобы указать цвет элементу списка
              // и применить ripple эффект при нажатии на него
              return Material(
                // InkWell позволяет отслеживать
                // различные события, например: нажатие
                child: InkWell(
                  // splashColor - цвет ripple эффекта
                  splashColor: Colors.grey,
                  // нажатие на элемент списка
                  onTap: () {
                    // Здесь мы используем сокращенную форму:
                    // Navigator.of(context).push(route)
                    // PonyDetailPage принимает pony id,
                    // который мы и передали
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => VehiclePage(vehicle.id)
                    ));
                  },
                  child: TransportVehicleItem(vehicle: vehicle),
                ),
              );
              // map возвращает Iterable объект, который необходимо
              // преобразовать в список с помощью toList() функции
            }).toList(),
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => VehicleAddPage()
          ));
        },
      ),
    );
  }
}