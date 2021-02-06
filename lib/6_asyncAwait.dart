import 'dart:io';

import '4_spacecraft.dart';

const oneSecond = Duration(seconds: 1);
// ···
Future<void> printWithDelay(String message) async {
  print('Loading...');
  await Future.delayed(oneSecond);
  print(message);
}

Future<void> printWithDelay2(String message) {
  print('밥 사러 가는 중...');
  return Future.delayed(oneSecond).then((_) {
    print(message);
  });
}

Future<void> createDescriptions(Iterable<String> objects) async {
  // Iterable은 List 라고 생각하면 된다.
  for (var object in objects) {
    try {
      var file = File('$object.txt');
      if (await file.exists()) {
        var modified = await file.lastModified();
        print('File for $object already exists. It was modified on $modified.');
        continue;
      }
      await file.create();
      await file.writeAsString('Start describing $object in this file.');
    } on IOException catch (e) {
      print('Cannot create description for $object: $e');
    }
  }
}

Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
  for (var object in objects) {
    await Future.delayed(oneSecond);
    yield '${craft.name} flies by $object';
  }
}

void asyncAwait() async {
  Spacecraft spacecraft = Spacecraft('건담', DateTime.now());

  printWithDelay('Loaded!!');
  printWithDelay2('오늘은 치킨이다!!');
  createDescriptions({'dhff', 'asdfasdf'});

  Stream<String> results = report(spacecraft, ['hello', 'world']);
  Stream<String> results2 = report(spacecraft, ['hello', 'world']);

  // listen 과 await for 는 결과는 같지만 동기/비동기 로 서로 다르다.
  await for (String s in results) {
    // 동기
    print('await for' + s);
  }

  results2.listen((s) {
    // 비동기
    print('listen:' + s);
  });
}
