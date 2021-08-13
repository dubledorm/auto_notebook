import 'package:flutter/material.dart';

class VehicleAddPage extends StatefulWidget {
  @override
  _VehicleAddPageState createState() => _VehicleAddPageState();
}

class _VehicleAddPageState extends State<VehicleAddPage> {

  // TextEditingController'ы позволят нам получить текст из полей формы
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  // _formKey пригодится нам для валидации
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vehicle Add Page"),
        actions: [
          // пункт меню в AppBar
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              // сначала запускаем валидацию формы
              if (_formKey.currentState!.validate()) {
                // здесь будет сохранение формы
              }
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: _buildContent(),
      ),
    );
  }
  Widget _buildContent() {
    // построение формы
    return Form(
      key: _formKey,
      // у нас будет два поля
      child: Column(
        children: [
          // поля для ввода заголовка
          TextFormField(
            // указываем для поля границу,
            // иконку и подсказку (hint)
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.face),
                hintText: "Заголовок"
            ),
            // не забываем указать TextEditingController
            controller: titleController,
            // параметр validator - функция которая,
            // должна возвращать null при успешной проверки
            // или строку при неудачной
            validator: (value) {
              // здесь мы для наглядности добавили 2 проверки
              if (value == null || value.isEmpty) {
                return "Заголовок пустой";
              }
              if (value.length < 3) {
                return "Заголовок должен быть не короче 3 символов";
              }
              return null;
            },
          ),
          // небольшой отступ между полями
          SizedBox(height: 10),
          // Expanded означает, что мы должны
          // расширить наше поле на все доступное пространство
          Expanded(
            child: TextFormField(
              // maxLines: null и expands: true
              // указаны для расширения поля на все доступное пространство
              maxLines: null,
              expands: true,
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Содержание",
              ),
              // не забываем указать TextEditingController
              controller: contentController,
              // также добавляем проверку поля
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Содержание пустое";
                }
                return null;
              },
            ),
          )
        ],
      ),
    );
  }
}