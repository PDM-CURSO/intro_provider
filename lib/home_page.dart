// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:contador_provider/contador.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
      ),
      body: Center(
        child: Consumer<Contador>(
          builder: (context, contador, child) {
            return Text("Condator de clics: ${contador.count}");
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            tooltip: "Sumar",
            child: Icon(Icons.add),
            onPressed: () {
              context.read<Contador>().increment();
            },
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            tooltip: "Restar",
            child: Icon(Icons.remove),
            onPressed: () {
              context.read<Contador>().decrement();
            },
          ),
        ],
      ),
    );
  }
}
