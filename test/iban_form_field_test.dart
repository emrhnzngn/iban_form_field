import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iban_form_field_updated/iban_form_field_updated.dart';

void main() {
  testWidgets('it has a country code', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: IbanFormField(
            initialValue: Iban('NL'),
          ),
        ),
      ),
    );
    final countryCodeFinder = find.text('NL');
    expect(countryCodeFinder, findsWidgets);
  });

  // TODO: test focus shifting
}
