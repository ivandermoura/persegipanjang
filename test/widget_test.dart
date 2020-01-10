import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:luas_segiempat/main.dart';
import 'package:luas_segiempat/home_page.dart';

void main(){
  Persegipanjang p;
  p = Persegipanjang();
  test("inisialissi hasil tidak sama dengan 0",(){
    p.hasil = -10;
    expect(p.hasil, isPositive);
  });

  test("Panjang persegi return error string",() {
    var result = Panjangvalidator.validate('');
    expect(result, equals('kolom panjang tidak boleh kosong'));
  });

  test("Panjang persegi tidak null",() {
    var result = Panjangvalidator.validate('string');
    expect(result, equals(null));
  });
   
   
 
  testWidgets('delete todo', (WidgetTester tester) async {
   
    // Build the widget.
    await tester.pumpWidget(Luassegiempat());
    // Enter 'hi' into the TextField.
    
    //await tester.press(find.byKey(Key('luas')));
  
    expect(find.byKey(Key('luas')), findsOneWidget);
    expect(find.byKey(Key('keliling')), findsOneWidget);

    await tester.pump();
    
    
});
testWidgets('Field Textfield', (WidgetTester tester) async{
  await tester.pumpWidget(Luassegiempat());
  var textfield = find.byKey(Key('TPersegi'));
  expect(textfield, findsOneWidget);
  await tester.enterText(textfield, '2');
  expect(find.text('2'), findsOneWidget);
});
}