import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:latihan_flutter4/main.dart';


void main() {
  testWidgets('Dashboard menampilkan informasi mahasiswa', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyWidget());

    expect(find.text('Dashboard Mahasiswa'), findsOneWidget);
    expect(find.text('Hello Mahasiswa'), findsOneWidget);
    expect(find.text('GLOBAL INSTITUT'), findsOneWidget);
  });

  testWidgets('Menu navigasi menampilkan tiga pilihan', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyWidget());

    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();

    expect(find.text('Dashboard'), findsOneWidget);
    expect(find.text('Profil Mahasiswa'), findsOneWidget);
    expect(find.text('Mata Kuliah'), findsOneWidget);
  });

  testWidgets('Halaman Profil Mahasiswa dapat dibuka', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyWidget());

    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Profil Mahasiswa'));
    await tester.pumpAndSettle();

    expect(find.text('Rayhan Ihsan Fadhilah'), findsOneWidget);
    expect(find.text('1126180062'), findsOneWidget);
  });

  testWidgets('Halaman Mata Kuliah dapat dibuka', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyWidget());

    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Mata Kuliah'));
    await tester.pumpAndSettle();

    expect(find.text('APLIKASI MOBILE'), findsOneWidget);
    expect(find.text('IT GOVERNANCE'), findsOneWidget);
    expect(find.text('REKAYASA PERANGKAT LUNAK'), findsOneWidget);
  });
}