import 'package:flutter/material.dart';

class HelloButtonPage extends StatefulWidget {
  const HelloButtonPage({super.key});

  @override
  State<HelloButtonPage> createState() => _HelloButtonPageState();
}

class _HelloButtonPageState extends State<HelloButtonPage> {
  var _counter = 0;

  @override
  Widget build(BuildContext context) {
    const buttonTextStyle = TextStyle(fontSize: 30.0);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Button"),
        // backgroundColor: Colors.amber,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Count = $_counter",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  print("You pressed Decrement!");

                  setState(() {
                    _counter--;
                  });
                },
                child: Text(
                  "Decrement",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              TextButton(
                onPressed: () {
                  print("You pressed Reset!");
                  setState(() {
                    _counter = 0;
                  });
                },
                child: Text("Reset",
                    style: Theme.of(context).textTheme.displaySmall),
              ),
              TextButton(
                onPressed: () {
                  print("You pressed Increment!");
                  setState(() {
                    _counter++;
                  });
                },
                child: Text("Increment",
                    style: Theme.of(context).textTheme.displaySmall),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
