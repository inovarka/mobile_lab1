void main() {
  // 1) Оператори "синтаксичного цукру".
  List list = [];

  list.add(123);
  list.add(33);

  list
    ..add(1)
    ..add(2)
    ..remove(2);

  var a = 5;
  var b;

  a ??= 6;
  b ??= 6;

  print('a: $a \nb: $b');

  // 2) Використання лямбда-функцій, замикань
  var z = () => 100;
  z(); //100

  Function summator(num example) {
    return (num i) => i + example;
  }

  var plusEx = summator(10);
  print(plusEx(5));

  // 3) Використання параметрів за замовчуванням
  print(Some(10));
  print(Some(10, 5));

  // 4) Різні варіанти конструкторів:
  // 4.1) Фабричний конструктор
  // 4.2) Конструктор ініціалізації

  // 5) Використання міксинів

  // 6) Використання ключового слова assert
  var urlString = "https://stackoverflow.com";
  assert(urlString.startsWith('https'),
      'URL ($urlString) should start with "https".');

  // 7) Робота з колекціями
  var list1 = [
    'Car',
    'Boat',
    'Plane',
  ];

  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var length = list1.length;
  print(list1[0]);
}

class ExampleMix with Mix {}

mixin Mix {
  bool isNormal;
  void DoSmt() {}
}

class Example {
  int a;
  int b;

  Example();

  Example.init()
      : a = 10,
        b = 20;

  factory Example.f(flag) {
    return flag ? Example() : ExampleChild();
  }
}

class ExampleChild extends Example {
  int c;
  ExampleChild();
}

num Some(num x, [y = 0]) {
  return x + y;
}
