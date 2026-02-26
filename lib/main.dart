import 'package:flutter/material.dart';
import 'package:week_2_1123150186/models/counter_model.dart';
import 'package:week_2_1123150186/views/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CounterModel(),
    child: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(title: 'State Management Week 2'),
    );
  }
}

