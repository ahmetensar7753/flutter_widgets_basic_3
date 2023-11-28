import 'dart:developer';

import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyCounterPageState createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    log("MyHomePage build running");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red.shade100,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(bottom: 20),
              child: Text(
                "Button clicked counter",
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            MyNewTextWidget(
              contr: counter,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log("Clicked FAB");

          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    Key? key,
    required int contr,
  })  : counter = contr,
        super(key: key);

  final int counter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        counter.toString(),
        style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }
}
