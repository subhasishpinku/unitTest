import 'package:firsttest/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Should have a title', (WidgetTester tester) async {
    //Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));

    //Act
    Finder title = find.text("Login");

    //Assert
    expect(title, findsOneWidget);
  });

  testWidgets('Should have one text field form to collect user email id',
      (WidgetTester tester) async {
    //Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));

    //Act
    Finder userNameTextField = find.byKey(const ValueKey("email_id"));

    //Assert
    expect(userNameTextField, findsOneWidget);
  });


    testWidgets('Should have one text field form to collect Password',
      (WidgetTester tester) async {
    //Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));

    //Act
    Finder passwordTextField = find.byKey(const ValueKey("password"));

    //Assert
    expect(passwordTextField, findsOneWidget);
  });
}
