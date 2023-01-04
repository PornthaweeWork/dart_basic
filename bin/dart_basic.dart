void main() {
  var y = 10;
  var x = 'Hello World ${y.round()}';
  print(x);

  dynamic z;
  z = 10;
  z = 'Hello';

  var numbers = <int>[1,2,3];
  numbers.add(4);
  numbers[0] = 10;

  for (var n in numbers) {
    print(n);
  }

  var countriesList = ['Thailand','United State'];
  var countries = {'Thailand', 'United State'};

  countriesList.add('Thailand');
  countries.add('Thailand');

  print(countriesList);
  print(countries);

  var countriesObject = <String, Object>{
    'name': 'Bond',
    'age': 18,
  };

  for (var c in countriesObject.keys) {
    print(c);
  }

  for (var c in countriesObject.values) {
    print(c);
  }

  for (var c in countriesObject.entries) {
    print(c);
  }

  var isMan = true;
  var intern = ['Song', 'Santa'];

  var names = [
    'Bond',
    for (var n in intern) n,
    ...intern,
  ];
  print(names);

  var a = [1, 2, 3];
  var b = [...a];

  a[0] = 10;
  print(a);
  print(b);

  var m = Days.monday;
  print(m);
}

enum Days {
  monday, tuesday, wednesday
}
