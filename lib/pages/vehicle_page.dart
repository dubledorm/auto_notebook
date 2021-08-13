import 'package:flutter/material.dart';
import '../models/transport_vehicle_list.dart';

// Транспортное средство
class VehiclePage extends StatelessWidget {
  // в качестве параметра мы будет получать id транспортного средства
  final int vehicleId;

  VehiclePage(this.vehicleId);

  @override
  Widget build(BuildContext context) {
    final vehicle = myVehicles[vehicleId];
    return Scaffold(
        appBar: AppBar(
          title: Text("Vehicle Detail Page"),
        ),
        body: Padding(
          // указываем отступ для контента
          padding: EdgeInsets.all(15),
          // Column размещает дочерние виджеты в виде колонки
          // crossAxisAlignment - выравнивание по ширине (колонка) или
          // по высоте (строка)
          // mainAxisAlignment работает наоборот
          // в данном случае мы растягиваем дочерние элементы
          // на всю ширину колонки
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  // вы не можете указать color для Container,
                  // т.к. свойство decoration было определено
                  // color: Colors.pinkAccent,

                  // BoxDecoration имеет дополнительные свойства,
                  // посравнению с Container,
                  // такие как: gradient, borderRadius, border, shape
                  // и boxShadow
                  // здесь мы задаем радиус закругления левого и правого
                  // верхних углов
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)
                    ),
                    // цвет Container'а мы указываем в BoxDecoration
                    color: Colors.pinkAccent,
                  ),
                  child: Text(
                    // указываем имя
                    vehicle.vehicleType.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  )
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    // указываем описание pony
                      vehicle.description,
                      style: Theme.of(context).textTheme.bodyText1
                  )
              )
            ],
          ),
        )
    );
  }
}