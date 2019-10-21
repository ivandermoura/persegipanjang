import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:luas_segiempat/main.dart';
import 'package:luas_segiempat/home_page.dart';

void main(){

  test("Panjang persegi return error string",() {
    var result = Panjangvalidator.validate('');
    expect(result, 'kolom panjang tidak boleh kosong');
  });

  test("Panjang persegi tidak null",() {
    var result = Panjangvalidator.validate('string');
    expect(result, null);
  });
   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(Luassegiempat());

    
    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

   
  });

}