import 'package:flutter/material.dart';

import 'page01.dart';
import 'page02.dart';
import 'page03.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Navigator(
        key: GlobalKey<NavigatorState>(),
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => {
              '/': (context) => Page01(routeObserver),
              '/page01': (context) => Page01(routeObserver),
              '/page02': (context) => Page02(),
              '/page03': (context) => Page03(),
            }[routeSettings.name](context),
          );
        },
        observers: [routeObserver],
      ),
    );
  }
}
