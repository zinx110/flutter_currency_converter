import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/pages/cupertino_home_page.dart';
import 'package:flutter_currency_converter/pages/material_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaterialHomePage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoHomePage(),
    );
  }
}
