// Logger для вывода сообщений
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());  // Запускаем приложение с MyApp
}

class Animal {
  String name;
  int age;

  // Конструктор родительского класса
  Animal(this.name, this.age);

  void makeSound() {
    debugPrint("$name издает звук.");
  }

  void describe() {
    debugPrint("${_getType()} по имени $name, возраст: $age лет.");
  }

  String _getType() {
    return "Животное";
  }
}

class Dog extends Animal {
  // Конструктор дочернего класса, передающий параметры родительскому конструктору через 'super'
  Dog(String name, int age) : super(name, age);  // Вот тут мы используем 'super'

  @override
  void makeSound() {
    debugPrint("$name лает: Гав-гав!");
  }

  static void info() {
    debugPrint("Собаки — лучшие друзья человека!");
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hello World'),
            ElevatedButton(
              onPressed: () {
                // Создаем объект Animal и Dog
                Animal animal = Animal("Лев", 5);
                animal.makeSound();
                animal.describe();

                Dog dog = Dog("Бобик", 3);
                dog.makeSound();
                dog.describe();
                Dog.info();  // Статический метод
              },
              child: Text('Test Classes'),
            ),
          ],
        ),
      ),
    );
  }
}
