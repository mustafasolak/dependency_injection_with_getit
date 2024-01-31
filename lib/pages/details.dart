import 'package:dependency_injection_with_getit/injection_container.dart';
import 'package:dependency_injection_with_getit/main.dart';
import 'package:dependency_injection_with_getit/services/app_service.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Details Page",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                String currentDatetime = locator<AppService>().execute();
                showSnackBar(currentDatetime, context);
              },
              child: const Text(
                "Get Date",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
