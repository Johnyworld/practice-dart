abstract class Describable {
  // abstract(요약): 정의를 자식 클래스에게 맡김.
  void describe();

  void describeWithEmphasis() {
    print('=========');
    describe();
    print('=========');
  }
}

class Unit extends Describable {
  @override
  void describe() {
    // TODO: implement describe
    print('Hello world!');
  }
}

class Animal implements Describable {
  @override
  void describe() {
    print('describe');
    // TODO: implement describe
  }

  @override
  void describeWithEmphasis() {
    print('describeWithEmphasis');
    // TODO: implement describeWithEmphasis
  }
}

void describable() {
  Unit unit = Unit();
  Animal animal = Animal();

  unit.describeWithEmphasis();
  animal.describeWithEmphasis();
}
