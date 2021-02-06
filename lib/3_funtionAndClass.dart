int add(int a, int b) {
  return a + b;
}

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

class Person {
  int age;
  String name;

/**
 * 
 * Person(int age, String name) {
 *   this.age = age;
 *   this.name = name;
 * }
 */
  Person(this.age, this.name); // 기본 생성자를 위 코드를 이것처럼 줄일 수 있음.

/**
 * 
 *  Person.age(int age) {
 *    this.age = age;
 *    this.name = 'Guest';
 *  }
 */
  Person.age(int age) : this(age, 'Guest'); // 이름 생성자 코드도 마찬가지로 이와같이 줄일 수 있음.

  void study() {
    print('$name study');
  }
}

void functionAndClass() {
  print('===== function =====');
  print(add(13, 35));
  print(fibonacci(20));

  print('===== Class =====');
  Person user = Person(20, 'Rocky Martin');
  Person user2 = Person.age(30);
  print({'age': user.age, 'name': user.name});
  print({'age': user2.age, 'name': user2.name});
  user.study();
  user2.study();
}
