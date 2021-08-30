import 'package:flutter/material.dart';
import 'package:ydl_flavor_app/app_config.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appConfig = AppConfig.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(appConfig!.appTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              appConfig.appTitle == 'Flav One'
                  ? 'This is a Increment Counter'
                  : 'This is a Decrement Counter',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: appConfig.appTitle == 'Flav One' ? _incrementCounter : _decrementCounter,
        child: appConfig.appTitle == 'Flav One' ? Icon(Icons.add) : Icon(Icons.remove),
      ),
    );
  }
}
