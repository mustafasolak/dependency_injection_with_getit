import 'package:dependency_injection_with_getit/injection_container.dart';
import 'package:dependency_injection_with_getit/main.dart';
import 'package:dependency_injection_with_getit/pages/details.dart';
import 'package:dependency_injection_with_getit/services/app_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                String currentDate = locator<AppService>().execute();
               showSnackBar(currentDate, context);
              },
              child: const Text(
                "Get Date",
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const DetailsPage(),
                  ),
                );
              },
              child: const Text(
                "Go to Details Page",
              ),
            ),
          ],
        ),
      ),
    );
  }


}
