
import 'package:calulator/calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController con1 = TextEditingController();
  TextEditingController con2 = TextEditingController();
  TextEditingController con3 = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('What is'),
              Container(
                width: 120,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  controller: con1,
                ),
              ),
              Text('% of'),
              Container(
                width: 120,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  controller: con2,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.yellow),
                  ),
                  onPressed: () {
                    num add = int.parse(con1.text) / int.parse(con2.text);
                    setState(() {
                      con3.text = add.toString();
                    });
                  },
                  child: Text('%',style: TextStyle(color: Colors.black),))
            ],
          ),
          Container(
              width: 320,
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                controller: con3,
              ))
        ],
      )),
    );
  }
}
