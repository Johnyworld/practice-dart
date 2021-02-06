class Spacecraft {
  String name;
  DateTime launchDate;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    name = name + '호';
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  int get launchYear => launchDate?.year; // read-only non-final property

  // Method.
  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

class Piloted {
  int astronauts = 1;
  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class MockSpaceship implements Spacecraft {
  // implements란, 상위클래스의 뼈대를 이용해서 새로운 클래스를 만드는 일.
  @override
  DateTime launchDate;

  @override
  String name;

  MockSpaceship(this.launchDate, this.name);

  @override
  void describe() {
    // TODO: implement describe
  }

  @override
  // TODO: implement launchYear
  int get launchYear => throw UnimplementedError();
  // ···
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(String name, DateTime launchDate) : super(name, launchDate);
}

class Orbiter extends Spacecraft {
  double altitude;
  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);

  @override
  void describe() {
    super.describe();
    print('Atitude: $altitude');
  }
}

void spacecraft() {
  Spacecraft myShip = Spacecraft('하이페리온', DateTime.now());
  Spacecraft yourShip = Spacecraft.unlaunched('나로');
  Orbiter orbiter = Orbiter('아비터', DateTime.now(), 12.333);
  PilotedCraft theyShip = PilotedCraft('슈페리온', DateTime.now());
  MockSpaceship herShip = MockSpaceship(DateTime.now(), '비너스');

  print('1호기: ${myShip.name}, 발사일: ${myShip.launchDate}');
  print('2호기: ${yourShip.name}, 발사일: ${yourShip.launchDate}');
  print(myShip.launchDate);
  print(myShip.launchYear);
  print('1호기 ===');
  myShip.describe();
  print('2호기 ===');
  yourShip.describe();
  print('궤도선 ===');
  orbiter.describe();
  print('3호기 ===');
  theyShip.describe();
  theyShip.describeCrew();
  herShip.describe();
}
