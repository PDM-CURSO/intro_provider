// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:contador_provider/contador.dart';
import 'package:contador_provider/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<Contador>(
        create: (context) => Contador(),
        child: HomePage(),
      ),
    );
  }
}
