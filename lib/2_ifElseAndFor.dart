void ifElseAndFor() {
  var year = 2000;
  List ages = [10, 11, 12];
  bool b = year > 2000;

  print('===== if else =====');

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

  print('===== where and forEach =====');
  ages.where((age) => age >= 11).forEach(print); // [11, 12]
}
