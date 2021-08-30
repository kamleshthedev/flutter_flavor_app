import 'package:flutter/material.dart';
import 'package:ydl_flavor_app/app_config.dart';
import 'package:ydl_flavor_app/main.dart';

void main() {
  var appConfig = AppConfig(
    child: MyApp(),
    appTitle: 'Flav Two',
    appTheme: Colors.purple,
  );
  return runApp(appConfig);
}
