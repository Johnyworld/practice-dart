import 'math.dart';
import 'Person.dart';

void main() {
  print('hello world');

  // Boolean
  bool visible = true;
  print(visible);

  // 정수
  int num = 12 ~/ 5; // int 형에서는 나누기가 먹히지 않고, 몫만 구하는 ~/ 만 사용할 수 있다.
  print(num);

  // 소수
  double num2 = 3.14 / 2;
  print(num2);

  // 문자열
  String name = '홍길동';
  print(name);

  // 배열
  List ages = [10, 11, 12];
  print(ages[0]);

  // 오브젝트
  Map person = {'name': name, 'age': ages[1]};
  print(person);

  var year = 2000;
  print(year);

  final int aoa = 123;
  print(aoa);

  final pi2 = 3.14;
  print(pi2);

  const pi3 = 3.14;
  print(pi3);

  print('===== if else =====');
  bool b = year > 2000;
  if (b) {
    print('21세기');
  } else if (year < 2000) {
    print('20세기');
  } else {
    print('밀레니엄! 21세기의 시작');
  }

  print('===== for =====');
  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  print('===== for in =====');
  for (var age in ages) {
    print(age);
  }

  print('===== while =====');
  while (year < 2020) {
    year += 2;
    print(year);
  }

  print('===== function =====');
  print(add(13, 35));

  print(fibonacci(20));

  print('===== where and forEach =====');
  ages.where((age) => age >= 11).forEach(print); // [11, 12]

  print('===== Class =====');
  Person user = Person(20, 'Rocky Martin');
  print({'age': user.age, 'name': user.name});
  user.study();
}

// 43:08
