import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget {
  final Widget child;
  final String appTitle;
  final MaterialColor appTheme;

  AppConfig({
    required this.child,
    required this.appTitle,
    required this.appTheme,
  }) : super(child: child);

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
