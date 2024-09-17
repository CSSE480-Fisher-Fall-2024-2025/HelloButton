import 'package:flutter/material.dart';

class HelloButtonPage extends StatefulWidget {
  const HelloButtonPage({super.key});

  @override
  State<HelloButtonPage> createState() => _HelloButtonPageState();
}

class _HelloButtonPageState extends State<HelloButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Button"),
        // backgroundColor: Colors.amber,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Count = 0"),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: null,
                child: Text("Decrement"),
              ),
              TextButton(
                onPressed: null,
                child: Text("Reset"),
              ),
              TextButton(
                onPressed: null,
                child: Text("Increment"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
