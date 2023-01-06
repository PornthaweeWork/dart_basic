import 'bank_account.dart';

void main() {
  var y = 10;
  var x = 'Hello World ${y.round()}';
  // print(x);

  dynamic z;
  z = 10;
  z = 'Hello';

  var numbers = <int>[1,2,3];
  numbers.add(4);
  numbers[0] = 10;

  for (var n in numbers) {
    // print(n);
  }

  var countriesList = ['Thailand','United State'];
  var countries = {'Thailand', 'United State'};

  countriesList.add('Thailand');
  countries.add('Thailand');

  // print(countriesList);
  // print(countries);

  var countriesObject = <String, Object>{
    'name': 'Bond',
    'age': 18,
  };

  for (var c in countriesObject.keys) {
    // print(c);
  }

  for (var c in countriesObject.values) {
    // print(c);
  }

  for (var c in countriesObject.entries) {
    // print(c);
  }

  var isMan = true;
  var intern = ['Song', 'Santa'];

  var names = [
    'Bond',
    for (var n in intern) n,
    ...intern,
  ];
  // print(names);

  var a = [1, 2, 3];
  var b = [...a];

  a[0] = 10;
  // print(a);
  // print(b);

  var m = Days.monday;
  // print(m);

 final o =  helloWorld(name: 'Obey');
//  print(o);

 final g = sum(10, 20);
//  print(g);

  final f = (int a, int b) => a + b;
  var result = f(10, 20);
  // print(result);

  result = cal(10, 20, f);

  final account1 = BankAccount.zero("Bond");
  print(account1.name);
  print(account1.balance);

  account1.deposit(100);
  account1.withdraw(100);

  final i = Ironman();
  final h = Hulk();
  h.jump();
  i.walk();

  final avengers = <Human>[Ironman(), Hulk()];
  for (var avenger in avengers){
    if (avenger is Ironman) {
      avenger.fly();
    } else if (avenger is Hulk) {
      avenger.jump();
    }
  }
}

abstract class Human {
  void walk() => print('walk');
  void speak() => print('speak');
}

class Ironman extends Human {
  void fly() => print('fly');
  
  @override
  void speak() => print('speak');
  
  @override
  void walk() => print('Ironman walk');
}

class Hulk extends Human {
  void jump() => print('jump');
}

int cal(int a, int b, Calculator f) => f(a, b);

typedef Calculator = int Function(int, int);

String helloWorld({String name = '', int? age}) => 'Hello World $name $age';

int sum(int a, int b) => a + b;


enum Days {
  monday, tuesday, wednesday
}
