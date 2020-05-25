import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/login.dart';
import './pages/start.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      routes: {
        '/': (c) => Start(),
        'login': (c) => Login(),
        'home': (c) => Home(),
      },
      initialRoute: '/',
    );
  }
}
