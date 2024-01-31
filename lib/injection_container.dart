import 'package:dependency_injection_with_getit/services/app_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup() {
  debugPrint("setup method is called");

  // --> AppService class instatiated only ONCE when setup method is called.
  locator.registerSingleton<AppService>(AppService());

  // --> AppService class instatiated only ONCE when we requested it.
  // locator.registerLazySingleton<AppService>(() => AppService());

  // --> AppService class instatiated EVERY TIME when we requested it
  // locator.registerFactory<AppService>(() => AppService());
}
