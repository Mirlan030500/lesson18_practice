void main() {
//Animal animal = Animal(food: '', location: 'location');
  Dog dog = Dog(food: 'мясо', location: 'во дворе', name: 'Собака');
  dog.makeNoise();
  dog.eat();
  dog.sleep();
  print('-' * 50);

  Cat cat = Cat(food: 'рыбу', location: 'в доме', name: 'Кошка');
  cat.makeNoise();
  cat.eat();
  cat.sleep();
  print('-' * 50);

  Horse horse = Horse(food: 'траву', location: 'в сарае', name: 'Лошадь');
  horse.makeNoise();
  horse.eat();
  horse.sleep();
  print('-' * 50);

  print('task2'); //task2

  Student student = Student(
      firstName: 'Азат', lastName: 'Кенчиев', group: 'ИСТ', averageMark: 7);
  student.showInfo();
  student.getScholarShip();
  print('-' * 50);

  Aspirant aspirant = Aspirant(
      firstName: 'Максат', lastName: 'Турдалиев', group: 'ИВТ', averageMark: 5);
  aspirant.showInfo();
  aspirant.getScholarShip();
}

class Animal {
  String? food;
  String? location;
  String? name;

  Animal({required this.food, required this.location});

  void makeNoise() {
    print('$name шумит');
  }

  void eat() {
    print('$name ест $food');
  }

  void sleep() {
    print('$name спит');
  }
}

class Dog extends Animal {
  String? name;
  Dog({
    required super.food,
    required super.location,
    required this.name,
  });
}

class Cat extends Animal {
  String? name;
  Cat({
    required super.food,
    required super.location,
    required this.name,
  });
}

class Horse extends Animal {
  String? name;
  Horse({
    required super.food,
    required super.location,
    required this.name,
  });
}

//task2

class Student {
  String? firstName;
  String? lastName;
  String? group;
  double averageMark;

  Student({
    required this.firstName,
    required this.lastName,
    required this.group,
    required this.averageMark,
  });

  getScholarShip() {
    if (averageMark == 5.0) {
      print('Сумма степендии состовляет: 20000 сом');
    } else if (averageMark < 5.0) {
      print('Сумма степендии состовляет: 0 сом');
    } else {
      print('ОШИБКА! Введите среднюю оценку с 0 до 5');
    }
  }

  showInfo() {
    print('Имя: $firstName');
    print('Фамилия: $lastName');
    print('Группа: $group');
    print('Средняя оценка: $averageMark');
  }
}

class Aspirant extends Student {
  Aspirant({
    required super.firstName,
    required super.lastName,
    required super.group,
    required super.averageMark,
  });
  getScholarShip() {
    if (averageMark == 5.0) {
      print('Сумма степендии состовляет: 40000 сом');
    } else if (averageMark < 5.0) {
      print('Сумма степендии состовляет: 18000 сом');
    } else {
      print('ОШИБКА! Введите среднюю оценку с 0 до 5');
    }
  }
}
