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

void spacecraft() {
  Spacecraft myShip = Spacecraft('하이페리온', DateTime.now());
  Spacecraft yourShip = Spacecraft.unlaunched('나로');
  print('1호기: ${myShip.name}, 발사일: ${myShip.launchDate}');
  print('2호기: ${yourShip.name}, 발사일: ${yourShip.launchDate}');
  print(myShip.launchDate);
  print(myShip.launchYear);
  print('1호기 ===');
  myShip.describe();
  print('2호기 ===');
  yourShip.describe();
}
