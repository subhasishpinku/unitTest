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

  testWidgets('Should have one login button', (WidgetTester tester) async {
    //Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));

    //Act
    Finder loginButton = find.byType(ElevatedButton);

    //Assert
    expect(loginButton, findsOneWidget);
  });
  testWidgets(
      "Should show Required Fields error message if user email id & password is empty",
      (WidgetTester tester) async {
    //Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));
    //Act
    Finder loginButton = find.byType(ElevatedButton);
    await tester.tap(loginButton);
    await tester.pumpAndSettle();
    Finder errorTests = find.text("Required Fields");

    //Assert
    expect(errorTests, findsNWidgets(2));
  });

  testWidgets("Should submit form when user email id & password is valid",
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));
    //ACT
    Finder userNameTextField = find.byKey(const ValueKey("email_id"));
    Finder passwordTextField = find.byKey(const ValueKey("password"));
    await tester.enterText(userNameTextField, "pinku.subhasish@gmail.com");
    await tester.enterText(passwordTextField, "password");

    Finder loginButton = find.byType(ElevatedButton);
    await tester.tap(loginButton);
    await tester.pumpAndSettle();
    Finder errorTests = find.text("Required Fields");
///
    //Assert
    expect(errorTests, findsNothing);
  });
}
