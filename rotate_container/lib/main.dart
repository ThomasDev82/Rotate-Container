import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyHomePage',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Container();
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
            child: Text(
          "Rotate Container",
          style: TextStyle(color: Colors.amberAccent),
        )),
      ),
      body: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Transform.rotate(
                  angle: _value * (pi / 180),
                  child: Container(
                    color: Colors.cyan,
                    height: _value,
                    width: _value,
                  ),
                ),
                Text(
                  "Value = ${(_value).round()}",
                  style:
                      const TextStyle(fontSize: 35, color: Colors.pinkAccent),
                ),
                Slider(
                  value: _value,
                  onChanged: (double val) => setState(() {
                    _value = val;
                  }),
                  min: 0,
                  max: 200,
                  label: ("Zoom"),
                  activeColor: Colors.red,
                  inactiveColor: Colors.green,
                )
              ],
            ),
          )),
    );
  }
}
