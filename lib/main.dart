import 'package:flutter/material.dart';
import 'package:marvel_app/pages/home_page.dart';
import 'package:marvel_app/providers/comics_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(Appstate());

class Appstate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ComicsProvider(), lazy: false),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
