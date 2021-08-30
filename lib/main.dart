import 'package:flutter/material.dart';
import 'package:ydl_flavor_app/app_config.dart';

import 'home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConfig.of(context)!.appTitle,
      theme: ThemeData(
        primarySwatch: AppConfig.of(context)!.appTheme,
      ),
      home: MyHomePage(),
    );
  }
}
