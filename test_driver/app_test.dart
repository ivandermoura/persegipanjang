// Imports the Flutter Driver API.

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App', () {

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });
    var textfield = find.byValueKey('TPersegi');
    var textfield2 = find.byValueKey('LPersegi');
    var kbutton = find.byValueKey('keliling');
    var cbutton = find.byValueKey('Clear');
    var keliling = find.text("16");

    test('Click Luas Button', () async {
      
       await driver.tap(textfield);
       await Future.delayed(Duration(seconds: 2));
       await driver.enterText('4');
       await Future.delayed(Duration(seconds: 2));
       await driver.tap(textfield2);
       await Future.delayed(Duration(seconds: 2));
       await driver.enterText('4');
       await driver.waitForAbsent(keliling);
       await driver.tap(kbutton);
       await Future.delayed(Duration(seconds: 2));
       await driver.tap(cbutton);
    });
  });
}
