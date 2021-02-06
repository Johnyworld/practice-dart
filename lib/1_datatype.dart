void datatype() {
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
}
