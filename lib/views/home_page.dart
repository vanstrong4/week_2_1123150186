import 'package:flutter/material.dart';
import 'package:week_2_1123150186/models/counter_model.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: Colors.red.shade100,
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('You have pushed the button this many times:'),
                Text(
                  value.angka.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    onPressed: (){
                      value.kurang();
                    },
                    tooltip: 'Kurang',
                    child: const Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    onPressed: (){
                      value.increment();
                    },
                    tooltip: 'Tambah',
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
        );
      }
    );
  }
}
