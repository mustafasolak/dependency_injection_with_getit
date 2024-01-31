import 'package:dependency_injection_with_getit/injection_container.dart';
import 'package:dependency_injection_with_getit/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setup();

  runApp(const DependencyInjectionApp());
}

class DependencyInjectionApp extends StatelessWidget {
  const DependencyInjectionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

void showSnackBar(String currentDate, BuildContext context) {
  SnackBar snackBar = SnackBar(
    content: Text(currentDate),
    duration: const Duration(milliseconds: 100),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
